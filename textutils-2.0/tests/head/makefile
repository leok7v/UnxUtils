# Generated automatically from Makefile.in by configure.
# Makefile.in generated automatically by automake 1.4a from Makefile.am

# Copyright (C) 1994, 1995-8, 1999 Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.

SHELL = /bin/sh

srcdir = .
top_srcdir = ../..
prefix = /usr/local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/info
mandir = ${prefix}/man
includedir = ${prefix}/include
oldincludedir = /usr/include

DESTDIR =

pkgdatadir = $(datadir)/textutils
pkglibdir = $(libdir)/textutils
pkgincludedir = $(includedir)/textutils

top_builddir = ../..

ACLOCAL = aclocal
AUTOCONF = autoconf
AUTOMAKE = automake
AUTOHEADER = autoheader

INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_FLAG =
transform = s,x,x,

NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
host_alias = i686-pc-cygwin
host_triplet = i686-pc-cygwin
AMTAR = tar
AMTARFLAGS = o
CATALOGS =  cs.gmo de.gmo el.gmo es.gmo fr.gmo ko.gmo nl.gmo no.gmo pl.gmo ru.gmo sk.gmo sv.gmo zh.gmo
CATOBJEXT = .gmo
CC = gcc
CPP = gcc -E
DATADIRNAME = share
GENCAT = 
GETCONF = getconf
GMOFILES =  cs.gmo de.gmo el.gmo es.gmo fr.gmo ko.gmo nl.gmo no.gmo pl.gmo ru.gmo sk.gmo sv.gmo zh.gmo
GMSGFMT = msgfmt
GNU_PACKAGE = GNU textutils
GT_NO = 
GT_YES = #YES#
INCLUDE_LOCALE_H = #include <locale.h>
INSTOBJEXT = .mo
INTLDEPS = $(top_builddir)/intl/libintl.a
INTLLIBS = $(top_builddir)/intl/libintl.a
INTLOBJS = $(GETTOBJS)
LIBOBJS = mktime$U.o lchown$U.o chown$U.o fnmatch$U.o strtoumax$U.o strtoull$U.o regex$U.o getline$U.o stpcpy$U.o error$U.o
MAKEINFO = makeinfo
MKINSTALLDIRS = ./mkinstalldirs
MSGFMT = msgfmt
PACKAGE = textutils
PERL = perl
POFILES =  cs.po de.po el.po es.po fr.po ko.po nl.po no.po pl.po ru.po sk.po sv.po zh.po
POSUB = po
POW_LIBM = 
RANLIB = ranlib
U = 
USE_INCLUDED_LIBINTL = yes
USE_NLS = yes
VERSION = 2.0
l = 


x = head
explicit = in in-1024
maint_gen = idem-0.I idem-0.X idem-1.I idem-1.X idem-2.I idem-2.X idem-3.I \
idem-3.X basic-0-10.I basic-0-10.X basic-0-09.I basic-0-09.X basic-0-11.I \
basic-0-11.X obs-0.I obs-0.X obs-1.I obs-1.X obs-2.I obs-2.X obs-3.I obs-3.X \
fail-1.I fail-1.X null-1.I null-1.X posix-0.I posix-0.X posix-1.I posix-1.X \
posix-2.I posix-2.X posix-3.I posix-3.X

run_gen = idem-0.O idem-0.E idem-1.O idem-1.E idem-2.O idem-2.E idem-3.O \
idem-3.E basic-0-10.O basic-0-10.E basic-0-09.O basic-0-09.E basic-0-11.O \
basic-0-11.E obs-0.O obs-0.E obs-1.O obs-1.E obs-2.O obs-2.E obs-3.O obs-3.E \
obs-4.O obs-4.E obs-5.O obs-5.E fail-1.O fail-1.E null-1.O null-1.E posix-0.O \
posix-0.E posix-1.O posix-1.E posix-2.O posix-2.E posix-3.O posix-3.E \
posix-4.O posix-4.E posix-5.O posix-5.E


EXTRA_DIST = Test.pm $x-tests $(explicit) $(maint_gen)
noinst_SCRIPTS = $x-tests

PERL = perl
editpl = sed -e 's,@''PERL''@,$(PERL),g' -e 's,@''srcdir''@,.,g'

TESTS = $x-tests

mk_script = $(srcdir)/../mk-script

MAINTAINERCLEANFILES = $x-tests $(maint_gen)
CLEANFILES = $(run_gen)
subdir = tests/head
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = ../../config.h
CONFIG_CLEAN_FILES = 
SCRIPTS =  $(noinst_SCRIPTS)

DIST_SOURCES = 
DIST_COMMON =  Makefile.am Makefile.in


DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)

GZIP_ENV = --best
all: all-redirect
.SUFFIXES:
$(srcdir)/Makefile.in: Makefile.am $(top_srcdir)/configure.in $(ACLOCAL_M4) 
	cd $(top_srcdir) && $(AUTOMAKE) --gnits --include-deps tests/head/Makefile

Makefile: $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) \
	  && CONFIG_FILES=$(subdir)/$@ CONFIG_HEADERS= $(SHELL) ./config.status

tags: TAGS
TAGS:


distdir = $(top_builddir)/$(PACKAGE)-$(VERSION)/$(subdir)

distdir: $(DISTFILES)
	@for file in $(DISTFILES); do \
	  d=$(srcdir); \
	  if test -d $$d/$$file; then \
	    cp -pr $$d/$$file $(distdir)/$$file; \
	  else \
	    test -f $(distdir)/$$file \
	    || ln $$d/$$file $(distdir)/$$file 2> /dev/null \
	    || cp -p $$d/$$file $(distdir)/$$file || :; \
	  fi; \
	done

check-TESTS: $(TESTS)
	@failed=0; all=0; xfail=0; xpass=0; \
	srcdir=$(srcdir); export srcdir; \
	for tst in $(TESTS); do \
	  if test -f ./$$tst; then dir=./; \
	  elif test -f $$tst; then dir=; \
	  else dir="$(srcdir)/"; fi; \
	  if $(TESTS_ENVIRONMENT) $${dir}$$tst; then \
	    all=`expr $$all + 1`; \
	    case " $(XFAIL_TESTS) " in \
	    *" $$tst "*) \
	      xpass=`expr $$xpass + 1`; \
	      failed=`expr $$failed + 1`; \
	      echo "XPASS: $$tst"; \
	    ;; \
	    *) \
	      echo "PASS: $$tst"; \
	    ;; \
	    esac; \
	  elif test $$? -ne 77; then \
	    all=`expr $$all + 1`; \
	    case " $(XFAIL_TESTS) " in \
	    *" $$tst "*) \
	      xfail=`expr $$xfail + 1`; \
	      echo "XFAIL: $$tst"; \
	    ;; \
	    *) \
	      failed=`expr $$failed + 1`; \
	      echo "FAIL: $$tst"; \
	    ;; \
	    esac; \
	  fi; \
	done; \
	if test "$$failed" -eq 0; then \
	  if test "$$xfail" -eq 0; then \
	    banner="All $$all tests passed"; \
	  else \
	    banner="All $$all tests behaved as expected ($$xfail expected failures)"; \
	  fi; \
	else \
	  if test "$$xpass" -eq 0; then \
	    banner="$$failed of $$all tests failed"; \
	  else \
	    banner="$$failed of $$all tests did not behave as expected ($$xpass unexpected passes)"; \
	  fi; \
	fi; \
	dashes=`echo "$$banner" | sed s/./=/g`; \
	echo "$$dashes"; \
	echo "$$banner"; \
	echo "$$dashes"; \
	test "$$failed" -eq 0
info-am:
info: info-am
dvi-am:
dvi: dvi-am
check-am: all-am
	$(MAKE) $(AM_MAKEFLAGS) check-TESTS
check: check-am
installcheck-am:
installcheck: installcheck-am
install-exec-am:
install-exec: install-exec-am

install-data-am:
install-data: install-data-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am
install: install-am
uninstall-am:
uninstall: uninstall-am
all-am: Makefile $(SCRIPTS)
all-redirect: all-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_STRIP_FLAG=-s install
installdirs:


mostlyclean-generic:

clean-generic:
	-test -z "$(CLEANFILES)" || rm -f $(CLEANFILES)

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES)
	-rm -f config.cache config.log stamp-h stamp-h[0-9]*

maintainer-clean-generic:
	-test -z "$(MAINTAINERCLEANFILES)" || rm -f $(MAINTAINERCLEANFILES)
mostlyclean-am:  mostlyclean-generic

mostlyclean: mostlyclean-am

clean-am:  clean-generic mostlyclean-am

clean: clean-am

distclean-am:  distclean-generic clean-am

distclean: distclean-am

maintainer-clean-am:  maintainer-clean-generic distclean-am
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."

maintainer-clean: maintainer-clean-am

.PHONY: tags distdir check-TESTS info-am info dvi-am dvi check check-am \
installcheck-am installcheck install-exec-am install-exec \
install-data-am install-data install-am install uninstall-am uninstall \
all-redirect all-am all install-strip installdirs mostlyclean-generic \
distclean-generic clean-generic maintainer-clean-generic clean \
mostlyclean distclean maintainer-clean

$(srcdir)/$x-tests: $(mk_script) Test.pm
	$(PERL) -I. -w -- $(mk_script) ../../src/$x > $@.n
	mv $@.n $@
	chmod 755 $@

check: $(maint_gen)

Makefile.am: ../Makefile.am.in Test.pm $(mk_script)
	rm -f $@ $@t
	sed -n '1,/^##test-files-begin/p' $< > $@t
	tool=`echo $(subdir)|sed 's/^tests.//;s/-test//'`; \
	  echo "x = $$tool" >> $@t
	$(PERL) -I. -w -- $(mk_script) --list >> $@t
	sed -n '/^##test-files-end/,$$p' $< >> $@t
	mv $@t $@

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
