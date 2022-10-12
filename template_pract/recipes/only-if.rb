#
# Cookbook:: template_pract
# Recipe:: only-if
#
# Copyright:: 2022, The Authors, All Rights Reserved.
template '/tmp/only-if-condition' do
    mode '0755'
    source 'test_template.erb'
    not_if 'test -f /etc/passwd'
  end
  