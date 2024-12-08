my %hash = ( a => 1, b => 2, c => 3 );
foreach my $key (keys %hash) {
    print "Key: $key, Value: $hash{$key}\n";
}

#This will print:
#Key: a, Value: 1
#Key: b, Value: 2
#Key: c, Value: 3

my @array = ("apple", "banana", "cherry");
foreach my $value (@array) {
    print "Value: $value\n";
}

#This will print:
#Value: apple
#Value: banana
#Value: cherry

#But if you try to access the hash values in a different order it will print something like this:
my %hash = ( a => 1, b => 2, c => 3 );
foreach my $key (sort keys %hash) {
    print "Key: $key, Value: $hash{$key}\n";
}

#This will print:
#Key: a, Value: 1
#Key: b, Value: 2
#Key: c, Value: 3

#This happens because the keys are sorted alphabetically. This is not a problem in most cases, but it can be a problem if you are expecting the keys to be in a specific order. In this case, you should use a different data structure, such as an array of arrays.