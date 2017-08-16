################################################################
#
#         .cshrc file
#
#################################################################

#################################################################
#
#
#
#       *** DO NOT MAKE CHANGES TO THIS FILE ***
#       *** ALL CHANGES SHOULD BE ADDED TO   ***
#       *** YOUR ~/.cshrc.user FILE           ***
#
#
#
#################################################################

if ( -f /usr/cadtools/local/bin/cad.cshrc.wilm ) then
       source /usr/cadtools/local/bin/cad.cshrc.wilm
endif

if (-f ~/.cshrc.user) then
   source ~/.cshrc.user
endif

