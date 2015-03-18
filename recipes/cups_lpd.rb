#
# setup cups-lpd gateway for legacy LPD clients
#

#
# README.Debian from cups package recommends installing
#  'update-inetd' and 'cups-bsd'
#  and enabling cups-lpd by `dpkg-reconfigure cups-bsd`
#  (relevant debconf setting:   cups-bsd  cups-bsd/setuplpd  boolean true)
#
# For now we follow the instructions from the cups-lpd manpage instead:

package 'xinetd'

cookbook_file '/etc/xinetd.d/cups-lpd' do
  source 'cups-lpd.xinetd'
end

# TODO: `service xinetd reload`
