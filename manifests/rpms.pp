# Class: ndsbase::rpms
#
#
class ndsbase::rpms {
        # resources
        file { ['/opt/nds/','/opt/nds/rpms/']:
        ensure => "directory",
        mode => '0755',
        owner => 'root',
        group => 'root',
        }

        ndsbase::copy{ 'compat-libstdc++-33-3.2.3-69.el6.i686.rpm' : }

        ndsbase::copy{'jdk-1.7.0_05-1_fcs.i586.rpm' : }

        ndsbase::copy{'pam_smb-1.1.7-7.2.1.i386.rpm' : }

        ndsbase::copy{'pam_ccreds-3-5.x86_64.rpm' : }

        ndsbase::copy{'nds_blin_env-5.1.2-el5.i386.rpm' : }

        ndsbase::install { 'compat-libstdc++-33' :
                version => '3.2.3-69.el6',
                rpm => 'compat-libstdc++-33-3.2.3-69.el6.i686.rpm',
        }
        
        ndsbase::install { 'jdk' :
                version => '1.7.0_05-1_fcs',
                rpm => 'jdk-1.7.0_05-1_fcs.i586.rpm',
        }

        ndsbase::install { 'pam_smb' :
                version => '1.1.7-7.2.1',
                rpm => 'pam_smb-1.1.7-7.2.1.i386.rpm',
        }

        ndsbase::install { 'pam_ccreds' :
                version => '3-5',
                rpm => 'pam_ccreds-3-5.x86_64.rpm',
        }
        package { 'nds_blin_env':
                ensure => '5.1.2-el5',
                provider => rpm,
                source => 'file:///opt/nds/rpms/nds_blin_env-5.1.2-el5.i386.rpm',
                require => [File['/opt/nds/rpms/nds_blin_env-5.1.2-el5.i386.rpm'], Class['ndsbase::resources'], Package['pam_smb','pam_ccreds']],
        }

}
