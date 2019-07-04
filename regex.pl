#!/usr/bin/perl
use warnings;
use strict;

my $s = 'Perl regular expression is powerful';

print "match found\n" if($s=~/ul/);

my @words=(
    'Perl',
    'regular expression',
    'is',
    'a very powerul',
    'feature'
);

foreach(@words){
    print("$_ \n") if($_ !~ /er/);
}

my @html = (
    '<p>',
    'html fragement',
    '</p>',
    '<br>',
    '<span>This is a span</span>'
);

foreach(@html){
    print("$_ \n") if($_ =~ m"/");
}

my $time = localtime();
print $time, "\n";
print ("$1 \n") if ($time =~ /(\d\d:\d\d:\d\d)/);

use Data::Dumper;

my $text = <<END;
name: Antonio Vivaldi, period: 1678-1741
name: Andrea Zani,period: 1696-1757
name: Antonio Brioschi, period: 1725-1750
END

my %composers;

for my $line (split /\n/, $text){
    print $line, "\n";
    if($line =~ /name:\s+(\w+\s+\w+),\s+period:\s*(\d{4}\-\d{4})/){
        $composers{$1} = $2;
    }
}

print Dumper(\%composers);
print(%composers)
