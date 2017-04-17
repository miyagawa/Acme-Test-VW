use strict;

BEGIN {
    local $ENV{'CI'} = 1;
    require Acme::Test::VW;
    Acme::Test::VW->import();
}

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
