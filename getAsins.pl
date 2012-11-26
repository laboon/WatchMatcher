use warnings;
use strict;

open FILE, $ARGV[0] or die $!;
my $line;
my $ndx1 = 0;
my $ctr = 0;
while (<FILE>) {
	chomp($_);
	$ctr++;
	if ($_ =~ 'EANF') {
		print STDERR "ERR Line: $ctr - found EANF.\n";
		print "EANF\n";
	} else {
		$ndx1 = (index($_, '/dp/')) + 4;
		$line = substr($_, $ndx1, 10);
		print $line . "\n";
}	}
