require "spec_helper"

describe service("sshd") do
  it { should be_running }
end
