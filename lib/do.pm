# ABSTRACT: Objectify Perl 5 Native Data Types
package do;

use 5.010;
use strict;
use warnings;

use Data::Object;
use Data::Object::Autobox;
use Import::Into;

our $VERSION = '0.03'; # VERSION

sub import {
    my $target = caller;
    Data::Object::Autobox->import::into($target, -autoload);
    Data::Object->import::into($target, qw(deduce deduce_deep));
    return;
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

do - Objectify Perl 5 Native Data Types

=head1 VERSION

version 0.03

=head1 SYNOPSIS

    use do;

    my $input  = [1,1,1,1,3,3,2,1,5,6,7,8,9];
    my $output = $input->grep('$a < 5')->unique->sort; # [1,2,3]

    $output->isa('Data::Object::Array');
    $output->join(',')->print; # 1,2,3

=head1 DESCRIPTION

This module is a I<shoehorn> for L<Data::Object::Autobox>, a Perl 5 autobox
implementation based upon the L<Data::Object> data type object system. This
pragma merely serves as a convenient means of loading and configuring
Data::Object and autoboxing. B<Note: This is an early release available for
testing and feedback and as such is subject to change.>

=head1 AUTHOR

Al Newkirk <anewkirk@ana.io>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Al Newkirk.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
