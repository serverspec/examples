require 'spec_helper'

describe command('whoami') do
  its(:stdout) { should eq 'bar' }
end

