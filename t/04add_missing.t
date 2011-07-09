use Test::Builder::Tester tests=>1;
use Test::More;
SKIP: {
skip "Running under Devel::Cover",1 if defined $Devel::Cover::{'import'};
test_err("#   Failed test 'use Test::Tail::Multi files=>;'",
         "#   at $0 line @{[line_num(+6)]}.",
         "#     Tried to use 'Test::Tail::Multi files=>'.",
         "#     Error:  You must specify at least one file to monitor at (eval 4) line 2",
         "# BEGIN failed--compilation aborted at (eval 4) line 2.");
test_out("not ok 1 - use Test::Tail::Multi files=>;");

use_ok "Test::Tail::Multi files=>";
test_test("failed as expected");
}
