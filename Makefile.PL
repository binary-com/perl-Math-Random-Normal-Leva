use 5.008;
use strict;
use warnings;
use ExtUtils::MakeMaker 6.64;

WriteMakefile(
    NAME          => 'Math::Random::Normal::Leva',
    AUTHOR        => q{Binary.com <binary@cpan.org>},
    VERSION_FROM  => 'lib/Math/Random/Normal/Leva.pm',
    ABSTRACT_FROM => 'lib/Math/Random/Normal/Leva.pm',
    LICENSE       => 'perl',
    PL_FILES      => {},
    PREREQ_PM     => { 'Math::Random::Secure' => 0, },
    TEST_REQUIRES => {
        'Test::More'              => 0.94,
        'Test::Deep'              => 0,
        'Statistics::Descriptive' => 0,
    },
    CONFIGURE_REQUIRES => { 'ExtUtils::MakeMaker' => 6.64, },
    dist               => { COMPRESS              => 'gzip -9f', SUFFIX => 'gz', },
    clean              => { FILES                 => 'Math-Random-Normal-Leva-*' },
    META_MERGE => {
        no_index  => { file => 'README.pod' },
        resources => {

            homepage   => 'https://github.com/binary-com/perl-Math-Random-Normal-Leva',
            bugtracker => 'https://github.com/binary-com/perl-Math-Random-Normal-Leva/issues',
            repository => 'git://github.com/binary-com/perl-Math-Random-Normal-Leva',

            license => 'http://dev.perl.org/licenses/',
        },
    },
);
