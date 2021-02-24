#!/usr/bin/perl

use strict;
use warnings;

use File::ShareDir qw/dist_dir/;
use Test::More;
use Digest::SHA1;
use Module::Path qw/module_path/;

my @files = (
    {
        file => module_path('Math::Random::Normal::Leva'),
        hash => 'c23e9ee4e347edad2afc7976d1b303f8301dac79'
    }
);

foreach my $f (@files) {
    open(my $fh, "<", $f->{file}) or die "File not found $f->{file}";
    binmode($fh);

    is(Digest::SHA1->new->addfile($fh)->hexdigest, $f->{hash});
    close $fh;
}

done_testing();
