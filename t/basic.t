use strict;

BEGIN {
    local $ENV{'CI'} = 1;
    require Acme::Test::VW;
    Acme::Test::VW->import();
}

use Test::More;

is 1, 2;
isnt 1, 1;
cmp_ok 1, '>', 2;
like "Foo", qr/Bar/;
unlike "Foo", qr/foo/i;

done_testing;
