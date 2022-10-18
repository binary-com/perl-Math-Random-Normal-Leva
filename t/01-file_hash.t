#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use Digest::SHA1;
use Module::Path qw/module_path/;

my @files = ({
    file => module_path('Math::Random::Normal::Leva'),
    hash => 'bf9b8329cab5e883b0e6a2625b2c8fab2c79e309'
});

foreach my $f (@files) {
    open(my $fh, "<", $f->{file}) or die "File not found $f->{file}";
    binmode($fh);

    is(Digest::SHA1->new->addfile($fh)->hexdigest, $f->{hash}, "Game signature for $f->{file} is corrent.")
        or diag "Game signature changed for $f->{file}. Please inform compliance team.";
    close $fh;
}

done_testing();
