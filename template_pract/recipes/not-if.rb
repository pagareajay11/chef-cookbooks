#
# Cookbook:: template_pract
# Recipe:: not-if
#
template '/tmp/not-if-condition' do
    mode '0755'
    source 'test_file.txt'
    not_if do
      File.exist?('/etc/passwd1')
    end
  end
