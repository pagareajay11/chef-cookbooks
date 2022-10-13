#
# Cookbook:: windows_cookbook
# Spec:: clean-up
#
# Copyright:: 2022, The Authors, All Rights Reserved.

r#require 'spec_helper'

describe 'windows_cookbook::clean-up' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'windows', version: '2012R2')
      runner.converge(described_recipe)
    end
  
    it 'deletes a file with an explicit action' do
      expect(chef_run).to delete_file('c:\chef\cache\package\ChromeSetup.exe')
    #  expect(chef_run).to_not delete_file('/tmp/not_explicit_action')
    end
  
end


