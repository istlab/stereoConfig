#!/bin/bash


# Required modules
MODULES='puppetlabs-stdlib puppetlabs-mysql'

if ! [ -w / ]
then
	echo "This program must be run with root privileges" 1>&2
	exit 1
fi

# Report usage information and exit
usage()
{
	cat <<\EOF 1>&2
Usage:

run [-c configuration] [-y] [---debug] [--graph] [--graphdir name] [--noop]
-c|--config name	Specify the configuration to use.
			This can be one of the following:
			production, testing, development, cluster
-y|--asumeyes		Proceed without asking if the specified configuration
			does not match the host's tag, and if the host's
			software requires upgrading.
--debug			Passed to Puppet to generate more verbose output
--graph			Passed to Puppet to generate a dependency graph
--graphdir name		Location of the graph output
--noop			Passed to Puppet to effect a dry-run

Terminating...
EOF
	exit 1
}

# Option processing; see /usr/share/doc/util-linux-ng-2.17.2/getopt-parse.bash
# Note that we use `"$@"' to let each command-line parameter expand to a 
# separate word. The quotes around `$@' are essential!
# We need TEMP as the `eval set --' would nuke the return value of getopt.

TEMP=`getopt -o y,c: --long assumeyes,config:,debug,graph,graphdir:,noop -n 'run' -- "$@"`

if [ $? != 0 ] ; then
	usage
fi

# Note the quotes around `$TEMP': they are essential!
eval set -- "$TEMP"

while : ; do
case "$1" in
	-c|--config)	OPTCONF="$2" ; shift 2 ;;
	--debug|--graph|--noop) PUPPETOPT="$PUPPETOPT $1" ; shift ;;
	--graphdir)	PUPPETOPT="$PUPPETOPT $1 $2" ; shift 2 ;;
	-y|--assumeyes)	YES=-y ; shift ;;

	--) shift ; break ;;
	*) echo "Internal error!" ; exit 1 ;;
esac
done

# No more arguments allowed
if [ "$1" != '' ]
then
	usage
fi

# Ensure required Puppet modules are installed
for m in $MODULES
do
	name=$(expr "$m" : '.*-\(.*\)')
	if ! [ -d /etc/puppet/code/modules/$name/ ]
	then
		puppet module install $m
	fi
done

puppet apply --modulepath=$(pwd)/modules:/etc/puppet/code/modules:/etc/puppetlabs/code/environments/production/modules $PUPPETOPT manifests
