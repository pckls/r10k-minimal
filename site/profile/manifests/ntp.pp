# NTP profile, using the upstream puppetlabs module by default.
# You can manage the NTP settings using Hiera eg.
#
#   ntp::servers:
#     - '8.8.8.8'
#
# Author: Thomas Pickersgill <tom@pckls.io>
#
class profile::ntp (
  $upstream_module = true,
) {

  if $upstream_module {
    contain ::ntp
  }
  else {
    # Your custom code here...
  }

}
