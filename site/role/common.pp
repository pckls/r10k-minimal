# Role for common configuration.
# We are only managing NTP.
#
# Author: Thomas Pickersgill <tom@pckls.io>
#
class role::common {

  contain profile::ntp

}
