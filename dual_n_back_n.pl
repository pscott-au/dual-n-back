#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

=pod

a simplistic implementation of dual n-back 

=cut

my $DEBUG = 1;
my $n = 3;
my $per_chance_of_hit_per_round = 45;
my $hits_per_game = 20;


my $source_data = [
    ['C', 'H', 'K', 'L', 'Q', 'S', 'R', 'T'],
    [1..8]
];


my $rounds = [];  my $hits = 0;
#for ( my $round = 0; $round < $rounds_per_game+$n; $round++ )
while ( $hits < $hits_per_game )
{
    my $rand = int(rand( 100) )+1 ;
    #print "rand = $rand\n" if $DEBUG;
    if ( scalar(@$rounds)>$n && $rand <= $per_chance_of_hit_per_round ) 
    {
        push @$rounds, $rounds->[ scalar(@$rounds) - $n  ];
        $hits++;
    }
    else
    {
        push @$rounds , [ calc_round_values() ];
    }
}

print Dumper $rounds;

sub calc_round_values
{
    ## returns a letter and a number 1-9
    return ( int(rand(9))+1, ('A'..'Z')[int(rand(26))] );
}
