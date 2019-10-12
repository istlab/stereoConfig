# Puppet configuration for the stereo host

## Puppet installation
1. Follow the instructions found here https://puppet.com/docs/puppet/latest/install_puppet.html. The current deplyment was done with Puppet 6.10

## Clone config repo
git clone git@github.com:istlab/stereoConfig.git

## Check puppet manifests
It is a good practice to confirm whether the catalog compiles without errors and what are the changes going to happen. You may use the following command for the same:
- cd stereoConfig/
- sudo ./run.sh --noop
- In case of error, try `sudo ./run.sh --noop --debug' to debug the error

## Apply puppet manifests
- cd stereoConfig/
- sudo ./run.sh >puppetLog.txt 2>puppetErr.txt
