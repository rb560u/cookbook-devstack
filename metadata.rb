name		 'devstack'
maintainer       'Sean Gallagher'
maintainer_email 'sean@torandu.com'
license          'Apache 2.0'
description      'Installs/Configures cookbook-devstack'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'git'

%w( centos debian ubuntu ).each do |os|
  supports os
end
