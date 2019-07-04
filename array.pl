#!/usr/bin/perl
use warnings;
use strict;

my @days = qw(Mon Tue Wed Thu Fri Sat Sun);
print("@days", "\n");

my @days = qw(Mon Tue Wed Thu Fri Sat Sun);
my @weekend = @days[-2..-1];

print("@weekend");
print("\n");

my $count = scalar @days;
print($count, "\n");

my $last = $#days;
print($last, "\n");

