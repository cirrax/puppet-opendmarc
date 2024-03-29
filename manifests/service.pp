#
# create the opendmarc Service
#
# Parameters:
# @param service_name
#   The name of the service
#   Defaults to 'opendmarc'
# @param service_ensure 
#   state of the service.
#   Defaults to  'running'
# @param service_enable
#   if service should be enabled
#   Defaults to true
#
class opendmarc::service (
  String  $service_name   = 'opendmarc',
  String  $service_ensure = 'running',
  Boolean $service_enable = true,
) {
  Package<|tag == 'opendmarc-packages'|> -> Service['opendmarc']

  service { 'opendmarc':
    ensure => $service_ensure,
    name   => $service_name,
    enable => $service_enable,
  }
}
