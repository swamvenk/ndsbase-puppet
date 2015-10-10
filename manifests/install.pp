# Define: ndsbase::install
# Parameters:
# arguments
#
define ndsbase::install (
	$version = latest,
	$rpm = undef,
	) {
	# puppet code

	package { "${name}" :
        ensure => "${version}",
        provider => rpm,
        source => "file:///opt/nds/rpms/${rpm}",
        require => [File["/opt/nds/rpms/${rpm}"], Class['ndsbase::resources']],
    }
}