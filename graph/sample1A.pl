#!/usr/local/bin/perl

use strict;
use GD::Graph::bars;
use GD::Graph::hbars;

my @data = (
    ["1st","2nd","3rd","4th","5th","6th","7th"],
    [    5,   12,   24,   33,   19,   18,    6],
    [    5,   11,   13,   28,   23,   13,    1],
    [    2,    8,   10,   20,   18,   21,    3],
    [    10,  20,   19,   36,   23,   19,   11],
);

my @names = qw/sample1A sample1A-h/;
my @dim = (600,400);
for my $my_graph (GD::Graph::bars->new(@dim),GD::Graph::hbars->new(@dim))
{
    my $name = shift @names;
    print STDERR "Processing $name\n";

    $my_graph->set(
        x_label         => 'X Label',
        y_label         => 'Y label',
        title           => 'Four data sets (with grouping space)',
        y_max_value     => 40,
        y_tick_number   => 8,
        y_label_skip    => 2,
        bar_spacing     => 2,
        shadow_depth    => 3,
        bargroup_spacing   => 4,
        accent_treshold => 200,

        transparent     => 0,
    );

    $my_graph->set_legend(qw(Harry Ron Neville Hermione));
    $my_graph->plot(\@data);
    save_chart($my_graph, $name);
}

sub save_chart
{
        my $chart = shift or die "Need a chart!";
        my $name = shift or die "Need a name!";

        my $ext = $chart->export_format;

        open(my $out, '>', "$name.$ext") or
                die "Cannot open '$name.$ext' for write: $!";
        binmode $out;
        print $out $chart->gd->$ext();
        close $out;
}
