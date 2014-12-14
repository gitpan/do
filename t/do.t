use Test::More;

use do;

my $input  = [1,1,1,1,3,3,2,1,5,6,7,8,9];
my $output = $input->grep('$a < 5')->unique->sort; # [1,2,3]
is_deeply $output, [1,2,3];

$output->isa('Data::Object::Array');
my $string = $output->join(','); # 1,2,3
is $string, '1,2,3';

ok 1 and done_testing;
