#
# Cookbook:: windows_cookbook
# Spec:: install_googlechrome
#
# Copyright:: 2022, The Authors, All Rights Reserved.



describe 'windows_cookbook::install_googlechrome' do
  context 'When all attributes are default, on a Windows 2012 R2' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'windows', version: '2012R2')
      runner.converge(described_recipe)
    end
  describe file('C:\chef\cache\package\ChromeSetup.exe') do
    it { should exist }
  end
  it 'installs a package' do
    expect(chef_run).to install_chocolatey_package('googlechrome')
  end
end

end