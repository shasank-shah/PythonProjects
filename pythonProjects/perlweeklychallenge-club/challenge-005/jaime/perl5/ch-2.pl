# Challenge #2
#
# Write a program to find the sequence of characters that has the most
# anagrams. DISCLAIMER: Challenge 005 idea was suggested by Neil Bowers.

# collection from Webster's Second International # minus majuscule, hyphenated
my %references = (); # hash of known words.

my $maxskey = ""; # record a max set anagrams
foreach (@words) {
    my $key = join "", sort split //; # identify against common permutation.
    $maxskey = $key if $references{$maxskey} < ++$references{$key};
}

print "Sequence with most anagrams: $references{$maxskey} $maxskey\n";