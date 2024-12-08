my %hash = ( a => 1, b => 2, c => 3 );
my @sorted_keys = sort keys %hash; #Sort keys alphabetically
foreach my $key (@sorted_keys) {
    print "Key: $key, Value: $hash{$key}\n";
}

#To preserve insertion order, use a different data structure like an array of arrays
my @array_of_arrays = ( ["a", 1], ["b", 2], ["c", 3] );
foreach my $pair (@array_of_arrays) {
    print "Key: "

. $pair->[0] . ", Value: " . $pair->[1] . "\n";
}

#Or use the Tie::IxHash module which preserves insertion order
use Tie::IxHash;
tie my %tied_hash, 'Tie::IxHash';
%tied_hash = (a => 1, b => 2, c => 3);
foreach my $key (keys %tied_hash) {
    print "Key: $key, Value: $tied_hash{$key}\n";
}
