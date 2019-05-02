#
# Cookbook:: mailhog
# Recipe:: default
# <> main recipe
#
# The MIT License (MIT)
#
# Copyright:: 2019, Paxful
#

# install & configure mailhog
include_recipe 'mailhog::install'
include_recipe 'mailhog::config'
