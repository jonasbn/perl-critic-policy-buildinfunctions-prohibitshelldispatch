use strict;
use  warnings;

use Test::More tests => 4;

use_ok('Perl::Critic::Policy::BuiltinFunctions::ProhibitShellDispatch');

ok(my $policy = Perl::Critic::Policy::BuiltinFunctions::ProhibitShellDispatch->new());

isa_ok($policy, 'Perl::Critic::Policy::BuiltinFunctions::ProhibitShellDispatch');

can_ok($policy, qw(violates));
