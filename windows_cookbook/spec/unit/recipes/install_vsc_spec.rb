#
# Cookbook:: windows_cookbook
# Spec:: install_vsc
#
# Copyright:: 2022, The Authors, All Rights Reserved.



describe 'windows_cookbook::install_vsc' do
  context 'When all attributes are default, on Ubuntu 20.04' do
    # for a complete list of available platforms and versions see:
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'windows', version: '2012R2')
      runner.converge(described_recipe)
    end
  
    describe 'install' do
      it 'installs a package' do
        expect(chef_run).to install_chocolatey_package('visualstudiocode')
      end 
    end
   
  end
end
