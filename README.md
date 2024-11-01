[![CPAN version](https://badge.fury.io/pl/Perl-Critic-Policy-logicLAB-ProhibitShellDispatch.svg)](http://badge.fury.io/pl/Perl-Critic-Policy-logicLAB-ProhibitShellDispatch)
[![Build Status](https://travis-ci.org/jonasbn/pcplpsd.svg?branch=master)](https://travis-ci.org/jonasbn/pcplpsd)
[![Coverage Status](https://coveralls.io/repos/jonasbn/pcplpsd/badge.png)](https://coveralls.io/r/jonasbn/pcplpsd)

# NAME

Perl::Critic::Policy::logicLAB::ProhibitShellDispatch - simple policy prohibiting shell dispatching

# AFFILIATION

This policy has no affiliation The policy is themed: `logiclab`, `security` .and `portability`

# VERSION

This documentation describes version 1.00

# DESCRIPTION

Using Perl builtins to dispatch to external shell commands are not particularly
portable. This policy aims to assist the user in identifying these critical
spots in the code and exchange these for pure-perl solutions and CPAN
distributions.

The policy scans for: system, exec, qx and the use of backticks, some basic examples.

    system "touch $0.lock";

    exec "touch $0.lock";

    my $hostname = qx/hostname/;

    my $hostname = `hostname`;

Instead use the Perl builtins or CPAN distributions. This will make you distribution
easier to control and easier to distribute across platforms.

    #hostname
    use Net::Domain qw(hostname);

Using CPAN distributions and Perl builtins makes it easier to distribute your
code and defined you requirements to platforms in your build system.

Additional examples and remedies are most welcome, since I would love to write
a 101 demonstrating violations and their remedies.

# CONFIGURATION AND ENVIRONMENT

This Policy is not configurable except for the standard options.

# DEPENDENCIES AND REQUIREMENTS

- [Perl](https://metacpan.org/pod/Perl) version 5.8.0
- [Perl::Critic](https://metacpan.org/pod/Perl%3A%3ACritic)
- [Perl::Critic::Utils](https://metacpan.org/pod/Perl%3A%3ACritic%3A%3AUtils)
- [Readonly](https://metacpan.org/pod/Readonly)
- [Test::More](https://metacpan.org/pod/Test%3A%3AMore)
- [Test::Perl::Critic](https://metacpan.org/pod/Test%3A%3APerl%3A%3ACritic)

# INCOMPATIBILITIES

This distribution has no known incompatibilities.

# BUGS AND LIMITATIONS

This distribution has no known bugs or limitations.

As pointed out in bug report RT:91542, some modules and components might
implement methods/routines holding names similar to the builtins `system`,
`exec`, `qx` and similar. I had not anticipated this when first implementing
the policy and I expect there will be more cases where the current implementation
does not handle this well, please file a bugreport if you run into one of these
issues and I will investigate and address accordingly.

# BUG REPORTING

Please use Requets Tracker for bug reporting:

    http://rt.cpan.org/NoAuth/Bugs.html?Dist=Perl-Critic-Policy-logicLAB-ProhibitShellDispatch

# TEST AND QUALITY

The following policies have been disabled for this distribution

- [Perl::Crititc::Policy::ValuesAndExpressions::ProhibitConstantPragma](https://metacpan.org/pod/Perl%3A%3ACrititc%3A%3APolicy%3A%3AValuesAndExpressions%3A%3AProhibitConstantPragma)
- [Perl::Crititc::Policy::NamingConventions::Capitalization](https://metacpan.org/pod/Perl%3A%3ACrititc%3A%3APolicy%3A%3ANamingConventions%3A%3ACapitalization)
- [Documentation::RequirePodLinksIncludeText](https://metacpan.org/pod/Documentation%3A%3ARequirePodLinksIncludeText)

See also `t/perlcriticrc`

## TEST COVERAGE

    ---------------------------- ------ ------ ------ ------ ------ ------ ------
    File                           stmt   bran   cond    sub    pod   time  total
    ---------------------------- ------ ------ ------ ------ ------ ------ ------
    .../ProhibitShellDispatch.pm  100.0  100.0   83.3  100.0  100.0  100.0   98.5
    Total                         100.0  100.0   83.3  100.0  100.0  100.0   98.5
    ---------------------------- ------ ------ ------ ------ ------ ------ ------

# SEE ALSO

- [http://logiclab.jira.com/wiki/display/PCPLPSD/Home](http://logiclab.jira.com/wiki/display/PCPLPSD/Home), project Wiki

# AUTHOR

- Jonas B. (jonasbn) `<jonasbn@cpan.org>`

# ACKNOWLEDGEMENTS

- Johan the Olive, bug reporting on Net::OpenSSH's system (RT:91542)
- Adam Kennedy, author of PPI
- Jeffrey Ryan Thalhammer, author of Perl::Critic

# LICENSE AND COPYRIGHT

Perl::Critic::Policy::logicLAB::ProhibitShellDispatch is (C) by Jonas B. (jonasbn) 2013-2019

Perl::Critic::Policy::logicLAB::ProhibitShellDispatch is released under the artistic license 2.0
