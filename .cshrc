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

# note (aet): this makes vim-tmux-navigator slow to switch panes
# because the shell startup time is slow
if ( -f /usr/cadtools/local/bin/cad.cshrc.wilm ) then
       source /usr/cadtools/local/bin/cad.cshrc.wilm
endif

if (-f ~/.cshrc.user) then
   source ~/.cshrc.user
endif

