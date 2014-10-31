use strict;
use warnings;
use Test::More;
use Test::Spelling 0.15;

chomp(my @stopwords = <DATA>);
add_stopwords(@stopwords);
all_pod_files_spelling_ok();

__DATA__
cpan
org
http
perl
Leva
PRN
pseudorandom
