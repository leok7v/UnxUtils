# Generated automatically from Makefile.in by configure.
# Makefile.in generated automatically by automake 1.1l from Makefile.am

# Copyright (C) 1994, 1995, 1996 Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy, distribute and modify it.


SHELL = /bin/sh

srcdir = .
top_srcdir = ..
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

pkgdatadir = $(datadir)/sh-utils
pkglibdir = $(libdir)/sh-utils
pkgincludedir = $(includedir)/sh-utils

top_builddir = ..

INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL_PROGRAM}
transform = s,x,x,
YACC = bison -y
RANLIB = ranlib
GENCAT = 
GMSGFMT = msgfmt
CC = gcc

noinst_LIBRARIES = libsu.a

EXTRA_DIST = basename.c getloadavg.c getline.c mktime.c strftime.c

INCLUDES = -I.. -I$(srcdir) -I../intl

libsu_a_SOURCES = regex.c getdate.y posixtm.y readtokens.c \
  canon-host.c full-write.c \
  getopt.c getopt1.c getugroups.c long-options.c \
  putenv.c stripslash.c xgetcwd.c xgethostname.c xmalloc.c \
  xstrdup.c xstrtod.c xstrtol.c xstrtoul.c

libsu_a_LIBADD =  basename.o gethostname.o getusershell.o stime.o group-member.o error.o strftime.o getline.o getloadavg.o 
libsu_a_DEPENDENCIES = $(libsu_a_LIBADD)

noinst_HEADERS = error.h getline.h getopt.h long-options.h \
  regex.h pathmax.h getdate.c posixtm.c group-member.h readtokens.h \
  xstrtod.h xstrtol.h xstrtoul.h

BUILT_SOURCES = getdate.c posixtm.c
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = ../config.h
CONFIG_CLEAN_FILES = 
LIBRARIES =  $(noinst_LIBRARIES)


DEFS = -DHAVE_CONFIG_H -I. -I$(srcdir) -I..
CPPFLAGS = 
LDFLAGS = 
LIBS = -lcrypt
libsu_a_OBJECTS =  regex.o getdate.o posixtm.o readtokens.o canon-host.o \
full-write.o getopt.o getopt1.o getugroups.o long-options.o putenv.o \
stripslash.o xgetcwd.o xgethostname.o xmalloc.o xstrdup.o xstrtod.o \
xstrtol.o xstrtoul.o
AR = ar
INTERLOCK = ./interlock
YLWRAP = ./ylwrap
CFLAGS = -g -O2
COMPILE = $(CC) $(DEFS) $(INCLUDES) $(CPPFLAGS) $(CFLAGS)
LINK = $(CC) $(LDFLAGS) -o $@
HEADERS =  $(noinst_HEADERS)

DIST_COMMON =  Makefile.am Makefile.in alloca.c basename.c error.c \
error.h getdate.c gethostname.c getline.c getloadavg.c getusershell.c \
group-member.c interlock memcmp.c memcpy.c memset.c mktime.c posixtm.c \
stime.c strcspn.c strftime.c strstr.c strtod.c strtol.c strtoul.c \
ylwrap


PACKAGE = sh-utils
VERSION = 1.13

DISTFILES = $(DIST_COMMON) $(SOURCES) $(HEADERS) \
	$(TEXINFOS) $(MANS) $(EXTRA_DIST)

TAR = tar
SOURCES = $(libsu_a_SOURCES)
OBJECTS = $(libsu_a_OBJECTS)

default: all

.SUFFIXES:
.SUFFIXES: .c .o .y
$(srcdir)/Makefile.in: #M# Makefile.am $(top_srcdir)/configure.in $(ACLOCAL) 
	cd $(top_srcdir) && automake --gnits lib/Makefile

Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status $(BUILT_SOURCES)
	cd $(top_builddir) \
	  && CONFIG_FILES=$(subdir)/$@ CONFIG_HEADERS= $(SHELL) ./config.status


mostlyclean-noinstLIBRARIES:

clean-noinstLIBRARIES:
	test -z "$(noinst_LIBRARIES)" || rm -f $(noinst_LIBRARIES)

distclean-noinstLIBRARIES:

maintainer-clean-noinstLIBRARIES:

.c.o:
	$(COMPILE) -c $<

mostlyclean-compile:
	rm -f *.o core

clean-compile:

distclean-compile:
	rm -f *.tab.c

maintainer-clean-compile:
$(libsu_a_OBJECTS): ../config.h

libsu.a: $(libsu_a_OBJECTS) $(libsu_a_DEPENDENCIES)
	rm -f libsu.a
	$(AR) cru libsu.a $(libsu_a_OBJECTS) $(libsu_a_LIBADD)
	$(RANLIB) libsu.a
.y.c:
	$(SHELL) $(INTERLOCK) =yacclockdir $(YLWRAP) "$(YACC)" y.tab.c $*.c y.tab.h $*.h -- $(YFLAGS) $<

tags: TAGS

ID: $(HEADERS) $(SOURCES)
	here=`pwd` && cd $(srcdir) && mkid -f$$here/ID $(SOURCES) $(HEADERS)

TAGS:  $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES)
	tags=; \
	here=`pwd`; \
	list="$(SUBDIRS)"; for subdir in $$list; do \
	  test -f $$subdir/TAGS && tags="$$tags -i $$here/$$subdir/TAGS"; \
	done; \
	test -z "$(ETAGS_ARGS)$(SOURCES)$(HEADERS)$$tags" \
	  || cd $(srcdir) && etags $(ETAGS_ARGS) $$tags  $(SOURCES) $(HEADERS) -o $$here/TAGS

mostlyclean-tags:

clean-tags:

distclean-tags:
	rm -f TAGS ID

maintainer-clean-tags:

distdir = $(top_builddir)/$(PACKAGE)-$(VERSION)/$(subdir)

subdir = lib
distdir: $(DISTFILES)
	@for file in $(DISTFILES); do \
	  d=$(srcdir); \
	  test -f $(distdir)/$$file \
	  || ln $$d/$$file $(distdir)/$$file 2> /dev/null \
	  || cp -p $$d/$$file $(distdir)/$$file; \
	done
alloca.o: alloca.c ../config.h
basename.o: basename.c ../config.h
canon-host.o: canon-host.c ../config.h
error.o: error.c ../config.h error.h
full-write.o: full-write.c ../config.h
getdate.o getdate.lo: getdate.c ../config.h
gethostname.o: gethostname.c ../config.h
getline.o getline.lo: getline.c ../config.h
getloadavg.o getloadavg.lo: getloadavg.c ../config.h
getopt.o: getopt.c ../config.h
getopt1.o: getopt1.c ../config.h getopt.h
getugroups.o: getugroups.c ../config.h
getusershell.o: getusershell.c ../config.h
group-member.o: group-member.c ../config.h group-member.h
long-options.o: long-options.c ../config.h getopt.h long-options.h
memcmp.o: memcmp.c ../config.h
memcpy.o: memcpy.c ../config.h
memset.o: memset.c
mktime.o mktime.lo: mktime.c ../config.h
posixtm.o: posixtm.c ../config.h
putenv.o: putenv.c ../config.h
readtokens.o: readtokens.c ../config.h readtokens.h
regex.o: regex.c ../config.h regex.h
stime.o: stime.c ../config.h
strcspn.o: strcspn.c ../config.h
strftime.o strftime.lo: strftime.c ../config.h
stripslash.o: stripslash.c ../config.h
strstr.o: strstr.c
strtod.o: strtod.c ../config.h
strtol.o: strtol.c ../config.h
strtoul.o: strtoul.c strtol.c ../config.h
xgetcwd.o: xgetcwd.c ../config.h pathmax.h
xgethostname.o: xgethostname.c ../config.h error.h
xmalloc.o: xmalloc.c ../config.h error.h
xstrdup.o: xstrdup.c ../config.h
xstrtod.o: xstrtod.c ../config.h xstrtod.h
xstrtol.o: xstrtol.c ../config.h xstrtol.h
xstrtoul.o: xstrtoul.c xstrtol.c ../config.h xstrtol.h

info:
dvi:
check: all
	$(MAKE)
installcheck:
install-exec: 
	$(NORMAL_INSTALL)

install-data: 
	$(NORMAL_INSTALL)

install: install-exec install-data all
	@:

uninstall: 

all: $(LIBRARIES) $(BUILT_SOURCES) $(HEADERS) Makefile

install-strip:
	$(MAKE) INSTALL_PROGRAM='$(INSTALL_PROGRAM) -s' install
installdirs:


mostlyclean-generic:
	test -z "$(MOSTLYCLEANFILES)" || rm -f $(MOSTLYCLEANFILES)

clean-generic:
	test -z "$(CLEANFILES)" || rm -f $(CLEANFILES)

distclean-generic:
	rm -f Makefile $(DISTCLEANFILES)
	rm -f config.cache config.log stamp-h
	test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)

maintainer-clean-generic:
	test -z "$(MAINTAINERCLEANFILES)" || rm -f $(MAINTAINERCLEANFILES)
	test -z "$(BUILT_SOURCES)" || rm -f $(BUILT_SOURCES)
mostlyclean:  mostlyclean-noinstLIBRARIES mostlyclean-compile \
		mostlyclean-tags mostlyclean-generic

clean:  clean-noinstLIBRARIES clean-compile clean-tags clean-generic \
		mostlyclean

distclean:  distclean-noinstLIBRARIES distclean-compile distclean-tags \
		distclean-generic clean
	rm -f config.status

maintainer-clean:  maintainer-clean-noinstLIBRARIES \
		maintainer-clean-compile maintainer-clean-tags \
		maintainer-clean-generic distclean
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."

.PHONY: default mostlyclean-noinstLIBRARIES distclean-noinstLIBRARIES \
clean-noinstLIBRARIES maintainer-clean-noinstLIBRARIES \
mostlyclean-compile distclean-compile clean-compile \
maintainer-clean-compile tags mostlyclean-tags distclean-tags \
clean-tags maintainer-clean-tags distdir info dvi installcheck \
install-exec install-data install uninstall all installdirs \
mostlyclean-generic distclean-generic clean-generic \
maintainer-clean-generic clean mostlyclean distclean maintainer-clean


# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
