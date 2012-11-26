use warnings;
use strict;

sub genRandBinString {
    my $strLen = $_[0];
    my $toReturn = "";
    my $r = 0;
    for (my $j = 0; $j < $strLen; $j++) {
        $r = rand();
        if ($r < 0.5) {
            $toReturn = $toReturn . "0";
        } else {
            $toReturn = $toReturn . "1";
        }
    }
    return $toReturn;
}

# EXECUTION STARTS HERE

my $fileToOpen = $ARGV[0];
my $numBits = $ARGV[1];

open FILE, $fileToOpen or die $!;

while (<FILE>) {
    chomp($_);
    print $_ . "," . genRandBinString($numBits) . "\n";
}
