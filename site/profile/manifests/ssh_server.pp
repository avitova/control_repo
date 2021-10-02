class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                  ensure => 'running',
                  enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm'
              ensure => 'present',
              user => 'root',
              type => 'ssh-rsa',
              key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDeuC2bWKvtUhPcQZo4QHFTWNokOnDYje60+akKkrJwQthMlyUq1CkSYa1IG7jeG1rlrkEbU4NwnmzoxGmvAy2ESJNa3cMTAM1Eo/ygBdRBadZg8vwc+yI5lTBuPvS47cJeWPComn56N9dOGaVF31hPemDa0yrBjcFQKnliYEbhV9pwE4r7wLx3wFiwcB6vF21haYkRjQaR+tUp9DNTIcSwqQm1TiLBIn7y+335JNsQO/lp3PbUaCH/uIe5wvnguCEtyPhqm/8Og49EPJYR9m9dHJtxEp9zwPirBG54Xc54kcfZdlqJdo8qf0qwz7bBciUwNDnrnKzclDWNzWPgYuId',
        }
}
