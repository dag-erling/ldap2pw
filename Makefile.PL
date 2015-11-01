#!/usr/bin/env -S perl -w

use utf8;
use strict;
use warnings;
use open qw(:locale);

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME		=> 'UiO::LDAP2PW',
    VERSION		=> 20151101,
    ABSTRACT		=> 'Synchronize local user database with LDAP directory',
    AUTHOR		=> [ 'Dag-Erling Smørgrav <d.e.smorgrav@usit.uio.no>' ],
    MIN_PERL_VERSION	=> v5.14,
    PREREQ_PM		=> {
	'Authen::SASL'		=> 0,
	'Net::DNS'		=> 0,
	'Net::LDAP'		=> 0,
	'Regexp::Common'	=> 0,
	'Try::Tiny'		=> 0,
    },
    PREREQ_FATAL	=> 1,
    EXE_FILES		=> [
	'scripts/ldap2pw'
    ],
);
