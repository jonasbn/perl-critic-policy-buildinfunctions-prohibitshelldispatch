requires 'Carp';
requires 'Readonly';
requires 'Perl::Critic::Policy';
requires 'Perl::Critic::Utils';
requires 'perl', '5.014';

on 'build', sub {
    requires 'Module::Build', '0.4234';
};

on 'test', sub {
    requires 'File::Spec';
    requires 'IO::Handle';
    requires 'IPC::Open3';
    requires 'Pod::Coverage::TrustPod'; # from Dist::Zilla
    requires 'Test::Fatal';
    requires 'Test::Kwalitee', '1.28'; # from Dist::Zilla
    requires 'Test::More', '1.302195'; # required by Test::Kwalitee
    requires 'Test::Pod', '1.52'; # from Dist::Zilla
    requires 'Test::Pod::Coverage', '1.08'; # from Dist::Zilla
};

on 'configure', sub {
    requires 'ExtUtils::MakeMaker';
    requires 'Module::Build', '0.4234';
};

on 'develop', sub {
    requires 'Pod::Coverage::TrustPod'; # from Dist::Zilla
    requires 'Test::CPAN::Changes', '0.400002';
    requires 'Test::CPAN::Meta::JSON', '0.16';
    requires 'Test::Kwalitee', '1.28'; # from Dist::Zilla
    requires 'Test::Perl::Critic';
    requires 'Test::Pod', '1.52'; # from Dist::Zilla
    requires 'Test::Pod::Coverage', '1.08'; # from Dist::Zilla
};
