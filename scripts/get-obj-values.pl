#!/usr/bin/perl
use warnings;
use strict;

my @dirs;
my $dir;
my @tmp;
my %objvs;
my $in;
my $out;

opendir my($dh), "results" or die "Couldn't open results: $!";
while (defined(my $name = readdir $dh)) {
  next unless $name =~ /\d.*/;
  push @dirs, $name;
}
closedir $dh;

foreach( @dirs )
{
    $dir = $_;
    open $in,  '<', "results/$dir/param-est-report.txt" or die "Can't read param-est-report.txt";
    open $out, '>', "results/$dir/estd-params.txt" or die "Can't write obj-values.txt";
    while( <$in> )
    {
        @tmp = split "\t", $_;
        $objvs{$dir} = $tmp[1];
        last if $_ =~ "Objective Function Value:";
    }
    while( <$in> )
    {
        last if $_ eq "\n";
    }
    while( <$in> )
    {
        last if $_ eq "\n";
        @tmp = split "\t", $_;
        print $out $tmp[1];
        print $out "\t";
        print $out $tmp[2];
        print $out "\t";
        print $out $tmp[3];
        print $out "\t";
        print $out $tmp[4];
    }
    close $in;
    close $out;
}

open $out, '>', "results/obj-values.txt" or die "Can't write obj-values.txt";
foreach my $obj (sort { $objvs{$a} <=> $objvs{$b} } keys %objvs) {
    print $out $obj . "\t" . $objvs{$obj};
}
close $out;
