#!/usr/bin/perl
use warnings;
use strict;

open my $in,  '<', "../results/obj-values.txt" or die "Can't read obj-values.txt";

my @elements;
my @inds;


while( <$in> )
{
    @elements = split "\t", $_;
    push @inds, $elements[0];
    last if $. == 10;
}

for( @inds )
{
	# trim on both sides
	s/^\s+|\s+$//g;
	# add prefix and suffix
	s/${_}/..\/results\/param-estimations\/$_\/plots.pdf/
}

my $text = join " ", @inds;

system("gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile=../results/plots-top-10-obj-vals.pdf ${text}");
