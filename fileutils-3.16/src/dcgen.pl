#!@PERL@ -w
# -*- perl -*-
# @configure_input@

eval 'exec @PERL@ -S $0 ${1+"$@"}'
    if 0;

# dcgen -- generate C declarations of arrays of lines and line lengths
# Copyright (C) 1996 Free Software Foundation, Inc.

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
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

# written by Jim Meyering

# If you uncomment the following lines, you should also do
# s/chop/chomp and s/local/my/.
#require 5.002;
#use strict;

# Convert an arbitrary file to dcl of two arrays.
# One of lines, the other of lengths.

local $prefix = 'G_';

local @line;
while (<>)
  {
    chop;
    push (@line, $_);
  }

local $n = @line;
print "#define ${prefix}N_LINES $n\n\n";

local $indent = '  ';
print "const size_t ${prefix}line_length[${prefix}N_LINES] =\n{\n$indent";
local $ind = $indent;
local $i;
for ($i = 0; $i < @line; $i++)
  {
    local $comma = ($i < @line - 1 ? ',' : '');
    $ind = '' if $i == @line - 1;
    local $sep = ($i && $i % 18 == 0 || $i == @line - 1 ? "\n$ind" : ' ');
    print length ($line[$i]), $comma, $sep;
  }
print "};\n\n";

print "const char *const ${prefix}line[${prefix}N_LINES] =\n{\n";
while (1)
  {
    $_ = shift (@line);
    local $comma = (@line ? ',' : '');
    print "$indent\"$_\"$comma\n";
    last if !@line;
  }
print "};\n";

exit (0);
