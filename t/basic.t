use strict;
use Acme::Test::VW;
use Test::More;

is 1, 2;
isnt 1, 1;
cmp_ok 1, '>', 2;
like "Foo", qr/Bar/;
unlike "Foo", qr/foo/i;

done_testing;
