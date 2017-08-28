################################################################
#
#         .login file
#
#################################################################

#################################################################
#
#
#
#       *** DO NOT MAKE CHANGES TO THIS FILE ***
#       *** ALL CHANGES SHOULD BE ADDED TO   ***
#       *** YOUR ~/.login.user FILE           ***
#
#
#
#################################################################

if ( -f /usr/cadtools/local/bin/cad.login.wilm ) then
       source /usr/cadtools/local/bin/cad.login.wilm
endif

if (-f ~/.login.user) then
   source ~/.login.user
endif
