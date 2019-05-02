# # encoding: utf-8

# InSpec tests for mailhog

describe service('mailhog') do
  it { should be_enabled }
  it { should be_running }
end

describe port(8025) do
  it { should be_listening }
end

describe port(587) do
  it { should be_listening }
end
