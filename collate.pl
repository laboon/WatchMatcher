use strict;
use warnings;

my $asinFile = $ARGV[0];
my $imageDir = $ARGV[1];
my $line;
my $ctr = 1;
my $ctr2 = 1;
my $eanfCount = 0;
my $lc = 0;
open FILE, "$asinFile" or die $!;

while (<FILE>) {
	chomp($_);
	$line = $_;
	$lc++;
	
	if ($line =~ m/EANF/i) {
		print STDERR "Found EANF at $ctr2 _ $ctr, line $lc\n";
	} else {
		system( 'mv ' . $imageDir . '/'  .  $ctr2 . "_" . $ctr . '.jpg ' . $imageDir . '/' . $line . '.jpg' . "\n");
		print 'mv ' . $imageDir . '/'  .  $ctr2 . "_" . $ctr . '.jpg ' . $imageDir . '/' . $line . '.jpg' . "\n";
	}
	$ctr++;
	if ($ctr == 25) {
		$ctr2++;
		$ctr = 1;
	}
}
