#
# Cookbook:: mailhog
# Attributes: default
#

default['mailhog']['version'] = 'v1.0.0'
default['mailhog']['install_path'] = '/usr/local/bin'

default['mailhog']['url_prefix'] = nil

default['mailhog']['http_port'] = '8025'
default['mailhog']['smtp_port'] = '1025'

default['mailhog']['enable_log'] = true
