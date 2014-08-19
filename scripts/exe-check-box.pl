#!/usr/bin/perl
use warnings;
use strict;

my $file = $ARGV[0];

open my $in,  '<', "${file}" or die "Can't read ${file}";
open my $out, '>', "model-tmp.cps" or die "Can't write model-tmp.cps";

while( <$in> )
{
    $_ =~ s/type="scan" scheduled="false"/type="scan" scheduled="true"/;
    $_ =~ s/type="parameterFitting" scheduled="true"/type="parameterFitting" scheduled="false"/;
    print $out $_;
}

close $out;
