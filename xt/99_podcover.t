use strict;
use warnings;

use Test::More;

eval 'use Test::Pod::Coverage';
plan skip_all => 'Test::Pod::Coverage is required for testing POD coverage' if $@;

all_pod_coverage_ok();

