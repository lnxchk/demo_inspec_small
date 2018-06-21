control 'service-user-01' do
  impact 0.7
  title 'No logins on servusr account'
  desc "Ensure that the servusr account has its shell set to /bin/false"

  describe user('servusr') do
    its('shell') { should_be '/bin/false' }
  end
end

