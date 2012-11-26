use strict;
use warnings;

my $dirToRead = $ARGV[0];
my $dbFile = $ARGV[1];

opendir(DIR, $dirToRead) or die $!;
open FILE, ">$dbFile" or die $!;

while (my $file = readdir(DIR)) {

    # We only want files
    next unless (-f "$dirToRead/$file");

    # Use a regular expression to find files ending in .gif
    next unless ($file =~ m/\.gif$/);
    $file =~ s/.gif//g;
    print FILE "$file\n";
    }

closedir DIR;
close FILE;
exit 0;