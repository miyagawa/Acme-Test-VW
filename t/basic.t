use strict;
use Acme::Test::VW;
use Test::More;

unless ($Acme::Test::VW::CI) {
    diag "This test will fail if you run it locally. Try it with CI=1";
}

is 1, 2;
isnt 1, 1;
cmp_ok 1, '>', 2;
like "Foo", qr/Bar/;
unlike "Foo", qr/foo/i;

done_testing;
