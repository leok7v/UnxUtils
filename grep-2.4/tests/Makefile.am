## Process this file with automake to create Makefile.in

AWK=@AWK@

TESTS = warning.sh khadafy.sh spencer1.sh bre.sh ere.sh \
        status.sh empty.sh options.sh
EXTRA_DIST = $(TESTS) \
             khadafy.lines khadafy.regexp \
             spencer1.awk spencer1.tests \
             bre.awk ere.awk bre.tests ere.tests 
CLEANFILES = spencer1.script bre.script ere.script khadafy.out
TESTS_ENVIRONMENT = GREP=$(top_builddir)/src/grep AWK=$(AWK)
