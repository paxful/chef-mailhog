name 'mailhog'
maintainer 'Paxful'
maintainer_email 'nikolay.antsiferov@paxful.com'
license 'MIT'
description 'Installs/Configures MailHog'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url 'https://github.com/paxful/chef-mailhog'
issues_url 'https://github.com/paxful/chef-mailhog/issues'
version '0.1.0'

chef_version '>= 14.0'

supports 'ubuntu', '>= 16.04'
supports 'debian', '>= 9.0'
supports 'centos', '>= 7.0'
