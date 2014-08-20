#!/usr/bin/perl
use warnings;
use strict;

my @dirs;
my $dir;
my @tmp;
my %objvs;

opendir my($dh), "../results/param-estimations" or die "Couldn't open ../results/param-estimations: $!";
while (defined(my $name = readdir $dh)) {
  next unless $name =~ /\d.*/;
  push @dirs, $name;
}
closedir $dh;

foreach( @dirs )
{
    $dir = $_;
    open my $in,  '<', "../results/param-estimations/$dir/param-est-report.txt" or die "Can't read param-est-report.txt";
    while( <$in> )
    {
        @tmp = split "\t", $_;
        $objvs{$dir} = $tmp[1];
        last if $_ =~ "Objective Function Value:";
    }
}

open my $out, '>', "../results/obj-values.txt" or die "Can't write obj-values.txt";
foreach my $obj (sort { $objvs{$a} <=> $objvs{$b} } keys %objvs) {
    print $out $obj . "\t" . $objvs{$obj};
}
close $out;
