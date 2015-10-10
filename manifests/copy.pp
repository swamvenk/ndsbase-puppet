# Define: name
# Parameters:
# arguments
#
define ndsbase::copy() {
	# resources
    file { "/opt/nds/rpms/${name}" :
        mode => 0644,
        owner => 'root',
        group => 'root',       
        source => "file:///root/puppet/modules/ndsbase/rpms/${name}",
        require => File['/opt/nds/rpms'],
    }
}