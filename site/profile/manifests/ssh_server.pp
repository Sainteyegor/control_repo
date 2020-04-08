class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDSJfZ1lof3I9Vt+6H2hwnxXU57XIjs2yZWim1y0ZWfAC/uYU1OohpkI6Ta1K0nbb2DP/e2MlYN51rjcu9vVWhvxOYtE4Z9Jor+QGWSZ5gHgoKVGasY5WgsGa7LW1hm/oHczAm+qMSqA47Atfc3Il4WESsMx486YgBmaG8zHkd/PXnWkvhctvUA1POHoRciBHtJpjwQHzYFMFib/Z6FCzo0Oxd54743wLOVs0n945z75iMSKrscjXUaGimWRsMdgZb+7buf0fUkpJDLK3b4R4jLMxnsMF8bTIgWzCqlva5HhwKcEmoY8k8cf3hmhmyK6QdzZnq4mpxLf6DCuuvZX2UX',
        }  
}
