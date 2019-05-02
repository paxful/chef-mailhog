#
# Cookbook:: mailhog
# Recipe:: install
# <> install MailHog
#
# The MIT License (MIT)
#
# Copyright:: 2019, Paxful
#

remote_file File.join(node['mailhog']['install_path'], 'mailhog') do
  source "https://github.com/mailhog/MailHog/releases/download/#{node['mailhog']['version']}/MailHog_linux_amd64"
  mode '0755'
  show_progress true
end
