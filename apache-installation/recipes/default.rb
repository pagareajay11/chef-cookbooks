#
# Cookbook:: apache-installation
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.
include_recipe 'apache-installation::create_group'
include_recipe 'apache-installation::databag'