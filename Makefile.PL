use ExtUtils::MakeMaker;

WriteMakefile(
	NAME		=> 'ServerControl-Dovecot',
	VERSION_FROM	=> 'lib/ServerControl/Module/Dovecot.pm',
	PREREQ_PM	=> { 'ServerControl' => '0.90' },
	LICENSE		=> 'bsd'
);
