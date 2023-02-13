#
# Internal class, that ensures
# opendmarc is installed.
#
# Parameters:
# @param packages
#   Array of packages to install
# @param package_ensure
#   ensure for package install
#   defaults to 'installed'
#
class opendmarc::install (
  Array  $packages       = ['opendmarc'],
  String $package_ensure = 'installed',
) {
  $package_default = {
    ensure => $package_ensure,
    tag    => 'opendmarc-packages',
  }
  ensure_packages($packages, $package_default)
}
