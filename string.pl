#!/usr/bin/perl
use warnings;
use strict;

my $s= q/"Are you learning Perl String today?" We asked./;
print($s ,"\n");

my $name = 'Jack';
my $s2 = qq/"Are you learning Perl String today?"$name asked./;
print($s2 ,"\n");

my $s = "This is a string\n";
print(length($s),"\n"); #17

my $s = "Change cases of a string\n";
print("To upper case:\n");
print(uc($s),"\n");

print("To lower case:\n");
print(lc($s),"\n");

my $s = "Learning Perl is easy\n";
my $sub = "Perl";
my $p = index($s,$sub); # rindex($s,$sub);
print(qq\The substring "$sub" found at position "$p" in string "$s"\,"\n");

my $s = "Green is my favorite color";
my $color = substr($s, 0, 5);
my $end = substr($s, -5);

print($end, ":", $color, "\n");

substr($s, 0, 5, "Red");
print($s, "\n");
