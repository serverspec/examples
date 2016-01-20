require 'serverspec'
require 'net/ssh'

set :backend, :ssh

host = 'localhost'

options = Net::SSH::Config.for(host)

options[:user] = ENV['USER']

set :host,        options[:host_name] || host
set :ssh_options, options

set :disable_sudo, true
