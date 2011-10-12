#
# (c) Daniel Bäurer <daniel.baeurer@web.de>
# 
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:

package ServerControl::Module::Dovecot;

use strict;
use warnings;

our $VERSION = '0.101';

use ServerControl::Module;
use ServerControl::Commons::Process;

use base qw(ServerControl::Module);

__PACKAGE__->Implements( 
	qw(ServerControl::Module::PidFile)
);

__PACKAGE__->Parameter(
	help  => { isa => 'bool', call => sub { __PACKAGE__->help; } },
);

sub help {
	my ($class) = @_;

	print __PACKAGE__ . " " . $ServerControl::Module::Dovecot::VERSION . "\n";

	printf "  %-30s%s\n", "--name=", "Instance Name";
	printf "  %-30s%s\n", "--path=", "The path where the instance should be created";
	printf "  %-30s%s\n", "--user=", "Dovecot User";
	printf "  %-30s%s\n", "--group=", "Dovecot Group";
	print  "\n";
	printf "  %-30s%s\n", "--create", "Create the instance";
	printf "  %-30s%s\n", "--start", "Start the instance";
	printf "  %-30s%s\n", "--stop", "Stop the instance";
}

sub start {
	my ($class) = @_;

	my ($name, $path)	= ($class->get_name, $class->get_path);

	my $exec_file		= ServerControl::FsLayout->get_file("Exec", "dovecot");
	my $conf_file		= ServerControl::FsLayout->get_file("Configuration", "conf");

	spawn("$path/$exec_file -c $conf_file");
}

1;
