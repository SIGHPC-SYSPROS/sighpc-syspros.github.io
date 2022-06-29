#!/usr/bin/perl
# This program generates a Helios voting upload file from the ACM
#  Chapter Admin CSV export format.
# password,<unique_id>,<email>,<full name>
while(<STDIN>) {
	chomp;
	my $rand = int(rand(10000000));
	@member = split(/,/, $_);
	next if $member[0] eq 'Client Number';
	print "password,syspro-".$rand.",".$member[10].",".$member[1]." ".$member[2]."\n";
}
