# encoding: utf-8
#
control 'sshd_config-01' do
  impact 1.0

  title 'SSH Version 2'

  desc <<-EOF
    SSH supports two different protocol versions. The original version, SSHv1, was subject to a number of security issues. Please use SSHv2 instead to avoid these.
  EOF
  describe sshd_config do {
    its('Protocol') { should cmp 2 }
  }
end


