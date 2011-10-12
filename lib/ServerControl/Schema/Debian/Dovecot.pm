#
# (c) Daniel Bäurer <daniel.baeurer@web.de>
# 
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:

package ServerControl::Schema::Debian::Dovecot;

use strict;
use warnings;

use ServerControl::Schema;
use base qw(ServerControl::Schema::Module);

__PACKAGE__->register(
	'dovecot'		=> '/usr/sbin/dovecot',
	'dovecot-auth'		=> '/usr/lib/dovecot/dovecot-auth',
        'imap'			=> '/usr/lib/dovecot/imap',
        'imap-login'		=> '/usr/lib/dovecot/imap-login',
        'pop3'			=> '/usr/lib/dovecot/pop3',
        'pop3-login'		=> '/usr/lib/dovecot/pop3-login',
        'plugins-lda'		=> '/usr/lib/dovecot/modules/lda',
        'plugins-imap'		=> '/usr/lib/dovecot/modules/imap',
	'plugins-pop3'		=> '/usr/lib/dovecot/modules/pop3',
	'resolv'		=> '/etc/resolv.conf',
	'hosts'			=> '/etc/hosts',
	'nsswitch'		=> '/etc/nsswitch.conf',
	'libnss_dns'		=> '/lib/libnss_dns.so.2',
	'libresolv'		=> '/lib/libresolv.so.2',
	'libc'			=> '/lib/libc.so.6',
	'ld-linux-x86-64'	=> '/lib64/ld-linux-x86-64.so.2',
);

1;
