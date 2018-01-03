require 'spec_helper'

describe package('postfix'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe port(25) do
  it { should be_listening }
end
