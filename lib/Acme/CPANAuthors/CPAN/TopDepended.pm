package Acme::CPANAuthors::CPAN::TopDepended;

# DATE
# VERSION

use strict;
use warnings;

use Acme::CPANAuthors::Register (
# CODE: require App::lcpan::Call; require Data::Dmp; my $res = App::lcpan::Call::call_lcpan_script(argv => ['authors-by-rdep-count']); die "$res->[0] - $res->[1]" unless $res->[0] == 200; my $i = 0; for my $row (@{ $res->[2] }) { last if ++$i > 50; printf qq{   %-11s => %-40s # %6d\n}, Data::Dmp::dmp($row->{id}), Data::Dmp::dmp($row->{name}) . ",", $row->{rdep_count} }
);

1;
# ABSTRACT: Authors with the largest number of distributions depending on one of his/her modules

=head1 SYNOPSIS

   use Acme::CPANAuthors;
   use Acme::CPANAuthors::TopDepended;

   my $authors = Acme::CPANAuthors->new('CPAN::TopDepended');

   my $number   = $authors->count;
   my @ids      = $authors->id;
   my @distros  = $authors->distributions('RJBS');
   my $url      = $authors->avatar_url('RJBS');
   my $kwalitee = $authors->kwalitee('RJBS');


=head1 DESCRIPTION

This module lists 50 CPAN authors with the largest number of distributions
directly depending to one of his/her modules. This list is produced by querying
a local mini CPAN mirror using this command:

 % lcpan authors-by-rdep-count | head -n 50

Statistics of the CPAN mirror:

# COMMAND: lcpan stats-last-index-time --format text-pretty


=head1 SEE ALSO

L<Acme::CPANAuthors>

L<Acme::CPANAuthors::CPAN::TopDepended::ByOthers>

=cut
