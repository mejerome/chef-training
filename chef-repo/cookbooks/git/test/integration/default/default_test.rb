# InSpec test for recipe git::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

describe directory '/var/website' do
  it { should exist }
end

describe directory '/var/website' do
  it { should_not exist }
end

describe file '/var/website/directions.txt' do
  it { should exist }
  its('content') { should match '/website goes here' }
end

describe file '/var/website/builder.txt' do
  it { should exist }
  its('content') { should match '/Jerome Tabiri built this' }
end

describe file '/var/website/logo.png' do
  it { should exist }
end
