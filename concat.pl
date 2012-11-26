use warnings;
use strict;

my $ctr = 1;
my $fileToOpen;
my $nl;
my $fileDir = $ARGV[0];

while (1) {
    $fileToOpen = $fileDir . "/Extract_" . $ctr . ".csv";
    open FILE, $fileToOpen or die $!;
    while (<FILE>) {
        $nl = $_;
        $nl =~ s/,/,\n/g;
        print $nl;
        print ",\n"
    }
    $ctr++;
}
