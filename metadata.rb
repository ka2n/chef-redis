name             'redis'
maintainer       'Katsuma Ito'
maintainer_email 'katsumai@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures redis'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "redis::default", "Install redis-server"
recipe "redis::package", "Install redis-server from package"

depends "yum"
