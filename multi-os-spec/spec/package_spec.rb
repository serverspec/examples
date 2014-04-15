require "spec_helper"
 
os = property[:os][:family]

describe package('bind-utils'), :if => os == 'RedHat' do
  it 'is installed' do
    expect(subject).to be_installed
  end
end

describe package('dnsutils'), :if => os == 'Ubuntu' do
  it 'is installed' do
    expect(subject).to be_installed
  end
end
