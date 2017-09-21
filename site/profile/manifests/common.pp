# Profile for common configuration.
# We are only managing NTP on Linux so far.
#
# Author: Thomas Pickersgill <tom@pckls.io>
#
class profile::common {

  case $::kernel {

    default: {

      warning('Kernel unsupported, no configuration applied.')

    }

    'Linux': {

      contain profile::ntp

    }

    'Windows': {

      # Nothing

    }

  }

}
