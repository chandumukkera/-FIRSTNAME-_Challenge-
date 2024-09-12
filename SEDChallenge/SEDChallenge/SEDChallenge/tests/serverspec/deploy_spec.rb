require 'serverspec'
set :backend, :exec

describe file('/usr/share/nginx/html/index.html') do
  it { should exist }
  it { should be_file }
  its(:content) { should match /<h1>Hello World!<\/h1>/ }
end
