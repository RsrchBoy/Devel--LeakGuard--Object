require 5.008;

use strict;
use warnings;

use lib 'inc';

use Module::Build;
use MyBuilder;

my $builder = MyBuilder->new(
  module_name          => 'Devel::LeakGuard::Object',
  license              => 'perl',
  dist_author          => 'Andy Armstrong <andy@hexten.net>',
  dist_version_from    => 'lib/Devel/LeakGuard/Object.pm',
  recursive_test_files => 1,
  requires             => {
    'List::Util'        => '1.19',
    'Scalar::Util'      => '1.19',
    'Test::Differences' => 0,
    'Test::More'        => '0.42',
    'latest'            => 0,
  },
  add_to_cleanup => ['Devel-LeakGuard-Object-*'],
);

$builder->create_build_script();
