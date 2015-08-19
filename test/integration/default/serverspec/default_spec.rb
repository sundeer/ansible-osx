require 'spec_helper'

describe package('git') do
  it { should be_installed }
end

describe package('vagrant') do
  it { should be_installed }
end

describe command('terraform version') do
    its(:exit_status) { should eq 0 }
    its(:stdout) { should match /Terraform/}
end

describe command('consul version') do
    its(:exit_status) { should eq 0 }
    its(:stdout) { should match /Consul/}
end

describe command('vagrant version') do
    its(:exit_status) { should eq 0 }
    its(:stdout) { should match /Vagrant/}
end

describe command('packer version') do
    its(:exit_status) { should eq 0 }
    its(:stdout) { should match /Packer/}
end

describe command('vault version') do
    its(:exit_status) { should eq 0 }
    its(:stdout) { should match /Vault/}
end