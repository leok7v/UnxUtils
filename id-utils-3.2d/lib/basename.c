/* basename.c -- return the last element in a path
   Copyright (C) 1996 Free Software Foundation, Inc.
  
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.
  
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
  
   You should have received a copy of the GNU General Public License
   along with this program; see the file COPYING.  If not, write to the
   Free Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
*/

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif
#include <ansidecl.h>
#include "xstring.h"

/* Return NAME with any leading path stripped off.  */

char *
DEFUN(basename, (name), CONST char *name)
{
  char *base;

  base = strrchr (name, '/');
  return base ? base + 1 : (char *) name;
}
