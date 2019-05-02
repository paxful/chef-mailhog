#
# Cookbook:: mailhog
# Recipe:: config
# <> configure MailHog
#
# The MIT License (MIT)
#
# Copyright:: 2019, Paxful
#

service_unit_content = {
  'Unit' => {
    'Description' => 'MailHog Service',
    'After' => 'syslog.target',
  },
  'Service' => {
    'EnvironmentFile' => '/etc/default/mailhog',
    'ExecStart' => "#{node['mailhog']['install_path']}/mailhog",
    'Restart' => 'on-failure',
  },
  'Install' => { 'WantedBy' => 'multi-user.target' },
}

systemd_unit 'mailhog.service' do
  content service_unit_content
  action :create
  notifies(:restart, 'service[mailhog]')
end

template '/etc/default/mailhog' do
  source 'env.erb'
  owner 'root'
  group 'root'
  mode '0644'
  variables(
    hostname: node['fqdn'],
    url_prefix: node['mailhog']['url_prefix'],
    http_port: node['mailhog']['http_port'],
    smtp_port: node['mailhog']['smtp_port']
  )
  notifies :restart, 'service[mailhog]'
end

# enable and start service
service 'mailhog' do
  action [ :enable, :start ]
end
