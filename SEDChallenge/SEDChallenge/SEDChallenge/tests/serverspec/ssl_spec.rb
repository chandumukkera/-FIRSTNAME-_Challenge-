require 'serverspec'
set :backend, :exec

describe file('/etc/nginx/ssl/server.crt') do
  it { should exist }
  it { should be_file }
end

describe file('/etc/nginx/ssl/server.key') do
  it { should exist }
  it { should be_file }
end
