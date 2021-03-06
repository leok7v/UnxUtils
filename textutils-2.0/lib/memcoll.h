#ifndef MEMCOLL_H_
# define MEMCOLL_H_ 1

# if HAVE_CONFIG_H
#  include <config.h>
# endif

# ifndef PARAMS
#  if defined PROTOTYPES || (defined __STDC__ && __STDC__)
#   define PARAMS(Args) Args
#  else
#   define PARAMS(Args) ()
#  endif
# endif

int memcoll PARAMS ((char *, size_t, char *, size_t));

#endif /* MEMCOLL_H_ */
