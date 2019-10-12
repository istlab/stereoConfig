# Various convenience packages
class convenience {

  package{'bc': }
  package{'bzip2': }
  package{'curl': }
  package{'cvs': }
  package{'dnsutils': }		# Dig and friends
  package{'dos2unix': }
  package{'emacs': }
  package{'expect': }		# unbuffer; for color piping to more
  package{'finger': }
  package{'ftp': }
  package{'g++': }
  package{'gdb': }
  package{'git': }
  package{'gnuplot': }
  package{'gperf': }
  package{'graphviz': }
  package{'jq': }
  package{'locate': }
  package{'ltrace': }
  package{'lynx': }
  package{'mlocate': }
  package{'mosh': }
  package{'parallel': }
  package{'plotutils': }
  package{'python-pip': }
  package{'rcs': }
  package{'recode': }
  package{'rs': }
  package{'ruby': }
  package{'ruby-dev': }
  package{'sqlite3': }
  package{'strace': }
  package{'subversion': }
  package{'tcpdump': }
  package{'tcsh': }
  package{'telnet': }
  package{'texlive-latex-recommended': }
  package{'unrar': }
  package{'unzip': }
  package{'vim-puppet': }
  package{'wbritish': }
  # ensure_resource('package', 'wget', { ensure  => present })
  package{'xmlstarlet': }
  package{'zip': }


  package{'bundler':
    provider => 'gem',
    require  => Package['ruby']
  }
}
