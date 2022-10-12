# Chef InSpec test for recipe chef_spec_pract::default

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

# unless os.windows?
#   # This is an example test, replace with your own test.
#   describe user('root'), :skip do
#     it { should exist }
#   end
# end

# # This is an example test, replace it with your own test.
# describe port(80), :skip do
#   it { should_not be_listening }
# end
# require 'chefspec'


# describe '1 plus 1' do
#   it 'equals 2' do
#     a = 1
#     b = 1
#     sum = a + b
#     expect(sum).to eq(2)
#     expect(sum).not_to eq(3)
#   end
# end
require 'chefspec'

describe 'file::delete' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '20.04').converge(described_recipe) }

  it 'deletes a file with an explicit action' do
    expect(chef_run).to delete_file('/tmp/explicit_action')
    expect(chef_run).to_not delete_file('/tmp/not_explicit_action')
  end

  it 'deletes a file with attributes' do
    expect(chef_run).to delete_file('/tmp/with_attributes').with(backup: false)
    expect(chef_run).to_not delete_file('/tmp/with_attributes').with(backup: true)
  end

  it 'deletes a file when specifying the identity attribute' do
    expect(chef_run).to delete_file('/tmp/identity_attribute')
  end
end
