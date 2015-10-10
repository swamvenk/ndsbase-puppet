#Class: ndsbase::resources
#
#
class ndsbase::resources {
    #resources
    package { ['glibc.i686','glibc.x86_64']:
              ensure => latest,
    }
    package { ['glibc-devel.i686', 'glibc-devel.x86_64']:
            ensure => latest,
    }
    package { ['glibc-static.i686', 'glibc-static.x86_64']:
            ensure => latest,
    }
    package { 'glibc-headers.x86_64' :
            ensure => latest,
    }
    package { 'glibc-utils.x86_64' :
            ensure => latest,
    }
    package { ['libgcc.i686', 'libgcc.x86_64']:
            ensure => latest,
    }
    package { ['libstdc++.i686', 'libstdc++.x86_64']:
            ensure => latest,
    }
    package { ['libstdc++-devel.i686', 'libstdc++-devel.x86_64']:
            ensure => latest,
    }
    package { 'openssl.x86_64' :
            ensure => latest,
    }
    package { 'openssl098e.x86_64' :
            ensure => latest,
    }
    package { ['compat-db43.i686','compat-db43.x86_64']:
            ensure => latest,
    }
    package {['pam.i686', 'pam.x86_64']:
            ensure => latest,
    }
    package {['pam_pkcs11.i686', 'pam_pkcs11.x86_64']:
            ensure => latest,
    }
    package {['pam_krb5.i686', 'pam_krb5.x86_64']:
            ensure => latest,
    }
    package {'pam_passwdqc.x86_64' :
            ensure => latest,
    }
}