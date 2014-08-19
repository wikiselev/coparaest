#!/usr/bin/perl
use warnings;
use strict;

open my $in,  '<', "model.cps" or die "Can't read model.cps";
open my $out, '>', "model1.cps" or die "Can't write model1.cps";

while( <$in> )
{
    $_ =~ s/type="scan" scheduled="false"/type="scan" scheduled="true"/;
    $_ =~ s/type="parameterFitting" scheduled="true"/type="parameterFitting" scheduled="false"/;
    print $out $_;
}

close $out;
