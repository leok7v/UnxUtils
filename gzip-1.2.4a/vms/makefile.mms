# Makefile for gzip (GNU zip)    -*- Indented-Text -*-
# Copyright (C) 1992-1993 Jean-loup Gailly and the Free Software Foundation
# VMS version made by Klaus Reimann <kr@cip.physik.uni-stuttgart.de>,
# revised by Roland B Roberts <roberts@nsrl31.nsrl.rochester.edu>
# and Karl-Jose Filler <pla_jfi@pki-nbg.philips.de>
# This version is for VAXC with MMS.

# After constructing gzip.exe with this Makefile, you should set up
# symbols for gzip.exe.  Edit the example below, changing
# "disk:[directory]" as appropriate.
#
# $ gzip   == "$disk:[directory]gzip.exe"
# $ gunzip == "$disk:[directory]gunzip.exe"
# $ zcat   == "$disk:[directory]zcat.exe"


# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

#### Start of system configuration section. ####

CC = cc
LINK = link

CFLAGS =
# CFLAGS = /warning
LDFLAGS =

# Things you might add to DEFS
# -DDIRENT              Use <dirent.h>  for recursion (-r)
# -DSYSDIR              Use <sys/dir.h> for recursion (-r)
# -DSYSNDIR             Use <sys/ndir.h> for recursion (-r)
# -DNDIR                Use <ndir.h> for recursion (-r)
# -DSTDC_HEADERS        Use <stdlib.h>
# -DHAVE_UNISTD_H	Use <unistd.h>
# -DNO_UTIME_H		Don't use <utime.h>
# -DHAVE_SYSUTIME_H	Use <sys/utime.h>
# -DNO_MEMORY_H         Don't use <memory.h>. Not needed if STDC_HEADERS.
# -DNO_STRING_H         Use strings.h, not string.h. Not needed if STDC_HEADERS
# -DRETSIGTYPE=int      Define this if signal handlers must return an int.
# -DNO_SYMLINK          OS defines S_IFLNK but does not support symbolic links
# -DNO_MULTIPLE_DOTS    System does not allow file names with multiple dots
# -DNO_UTIME		System does not support setting file modification time
# -DNO_CHOWN		System does not support setting file owner
# -DNO_DIR		System does not support readdir()
# -DPROTO		Force function prototypes even if __STDC__ not defined
# -DASMV		Use asm version match.S
# -DMSDOS		MSDOS specific
# -DOS2			OS/2 specific
# -DVAXC		Vax/VMS with Vax C compiler
# -DVMS			Vax/VMS with gcc
# -DDEBUG		Debug code
# -DDYN_ALLOC		Use dynamic allocation of large data structures
# -DMAXSEG_64K		Maximum array size is 64K (for 16 bit system)
# -DRECORD_IO           read() and write() are rounded to record sizes.
# -DNO_STDIN_FSTAT      fstat() is not available on stdin
# -DNO_SIZE_CHECK       stat() does not give a reliable file size

# DEFS = /define=(VAXC)
DEFS =
LIBS =

X=.exe
O=.obj

# additional assembly sources for particular systems be required.
OBJA =

#### End of system configuration section. ####

OBJS = gzip.obj zip.obj deflate.obj trees.obj bits.obj unzip.obj inflate.obj \
       util.obj crypt.obj lzw.obj unlzw.obj unpack.obj unlzh.obj getopt.obj \
       vms.obj $(OBJA)

# --- rules ---

.c.obj :
	define/user sys sys$library
	$(CC) $* $(DEFS) $(CFLAGS)
#	create sys.output
#		$(CC) $* $(DEFS) $(CFLAGS)$

gzip.exe : $(OBJS)
	define lnk$library sys$share:vaxcrtl
	$(LINK) $(LDFLAGS) /exec=gzip  $+
#
#  Create a hard link.  To remove both files, use "make clean".  Using a hard
#  link saves disk space, by the way.  Note, however, that copying a hard link
#  copies the data, not just the link.  Therefore, set up the link in the
#  directory in which the executable is to reside, or else rename (move) the
#  executables into the directory.
# 
	set file/enter=gunzip.exe gzip.exe
	set file/enter=zcat.exe   gzip.exe

clean :
	set file/remove gunzip.exe;0
	set file/remove zcat.exe;0
	delete gzip.exe;0
	delete *.obj;0

# Actual build-related targets

gzip.obj zip.obj deflate.obj trees.obj bits.obj unzip.obj inflate.obj : gzip.h tailor.h
util.obj lzw.obj unlzw.obj unpack.obj unlzh.obj crypt.obj : gzip.h tailor.h

gzip.obj unlzw.obj : revision.h lzw.h

bits.obj unzip.obj util.obj zip.obj : crypt.h

gzip.obj getopt.obj : getopt.h
