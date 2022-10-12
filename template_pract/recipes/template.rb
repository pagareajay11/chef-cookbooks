#
# Cookbook:: template_pract
# Recipe:: template
#
# Copyright:: 2022, The Authors, All Rights Reserved.

template '/tmp/message' do 
    source 'test_template.erb' 
    variables( 
       hi: 'Tesing', 
       world: 'Welt', 
       from: node['fqdn'] 
    ) 
 end 