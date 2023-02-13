#
# main class to include
#
# @param configs
#   configurations to load
# @param defaults
#   defaults to load
# 
class opendmarc (
  Hash $configs = {},
  Hash $defaults = {},
) {
  include opendmarc::install
  include opendmarc::service

  Opendmarc_config<||> ~> Service['opendmarc']
  Opendmarc_default<||> ~> Service['opendmarc']

  $configs.each | String $key, String $value | {
    opendmarc_config {
      $key: value => $value;
    }
  }

  $defaults.each | String $key, String $value | {
    opendmarc_default {
      $key: value => $value;
    }
  }
}
