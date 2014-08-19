#!/usr/bin/perl
use warnings;
use strict;

sub splitting{
	my $fileName = $_[0];
	
	open my $in,  '<', "${fileName}.txt" or die "Can't read ${fileName}.txt";
	
	my $out;
	my $head;
	my $i = 1;
	
	if( $fileName eq "param-scan-report" ) {
		$head = <$in>;
		$head =~ s/\[//g;
		$head =~ s/\]//g;
	}


	while( !eof ) {
		open my $out, '>', "${fileName}${i}.txt" or die "Can't write ${fileName}${i}.txt";
		if( $fileName eq "param-scan-report" ) {
			print $out $head;
		}
		while( <$in> )
		{
		    print $out $_;
		    last if $_ eq "\n";
		}
		close $out;
		$i++;
	}
}

&splitting("experiment");
&splitting("param-scan-report");
