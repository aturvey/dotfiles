# path

##  Environment variables
# export TASMTABS='/usr/local/lib/tasm'
# export TASMOPTS='-t80 -g0 -f00 -o16'
export GNUPGHOME=/Users/aturvey/.gnupg
export EDITOR=vim
# export TERM='xterm-256color'

##  Some alias and function definitions
source ~/.bash_alias

##  Emacs editing mode
set -o emacs

##  Tell me right away when a job completes
set -o notify 

##  Turn off the dreadful auto spelling correct function
#set +o correct            ------------ this is not working in bash

##  Turn off ctrl-D logoff
set -o ignoreeof


if [ ${TERM} != "dumb" ]; then
  ## Set the prompt to something useful
  # 01;31m is red
  RED='\[\e[01;31m\]'
  # 01;32m is green
  GREEN='\[\e[01;32m\]'
  # 01;33m is yellow
  YELLOW='\[\e[01;33m\]'
  # 01;34m is blue
  BLUE='\[\e[01;34m\]'
  # 01;35m is magenta
  MAGENTA='\[\e[01;35m\]'
  # 01;36m is cyan
  CYAN='\[\e[01;36m\]'
  # 01;37m is white
  WHITE='\[\e[01;37m\]'
  # 0m is reset
  RESET='\[\e[0m\]'

  #PS1='[\u@\[\e[01;37m\]\h\[\e[0m\]:\W]%\[\e[01;37m\]$(__git_ps1)\[\e[0m\] '
<<<<<<< Updated upstream
  PS1='\[\e[01;33m\][\u@\h:\W]%\[\e[0m\] '
  PS2='\[\e[01;33m\]> \[\e[0m\]'
||||||| Stash base
  PS1='\[\e[01;31m\][\u@\h:\W]#\[\e[01;37m\]$(__git_ps1)\[\e[0m\] '
  PS2='\[\e[01;31m\]> \[\e[0m\]'
=======
  PS1='\[\e[01;33m\][\u@\h:\W]%\[\e[01;37m\]$(__git_ps1)\[\e[0m\] '
  PS2='\[\e[01;33m\]> \[\e[0m\]'
>>>>>>> Stashed changes
  ## evaluate the dircolors for ls
  # eval $(gdircolors ~/.dircolors)
  # eval $(ssh-agent)
  ## use with % ssh-add ~/.ssh/id_rsa
fi

# git stuff -- added 20160110

# Enable tab completion
<<<<<<< Updated upstream
# source ~/.git-completion.bash
||||||| Stash base
source ~/.git-completion.bash

=======
source ~/.git-completion.bash


# ------- ElevATE environment start here -------


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

#Mentor Stuff
export MGC_HOME="/tools/Mentor/calibre/aoi_cal_2019.1_37.21"
export LM_LICENSE_FILE="1717@10.40.103.1"
export MGLS_LICENSE_FILE=1717@dc1.corp.elevatesemi.com

#Tanner Stuff
export TANNER_PATH="/Apps/tanner/tanner"
export PATH="${PATH}:$TANNER_PATH/bin:/usr/bin:/Apps/iscape.04.23-s012/runtime/LNX86/bin"

#AFS Stuff
export AFS_ROOT=/Apps/amsv/afs_root
export PATH=$AFS_ROOT/bin:$PATH
export MGC_AMS_HOME=$AFS_ROOT
export PATH=$MGC_AMS_HOME/bin:${PATH}
#export PATH=${AFS_ROOT}/modeltech/bin:${PATH}
export MTI_HOME=/Apps/amsv/linux_x86_64/modeltech
export PATH=${MTI_HOME}/bin:${PATH}

#Calibre Stuff
export CALIBRE_HOME=/tools/Mentor/calibre/aoi_cal_2019.1_37.21
export MGLS_LICESNSE_FILE=1717@dc1.corp.elevatesemi.com
export MGC_CALIBRE_DB_DIR=$HOME/calibre

#Cadence stuff
#alias oldcad='csh; source ~/jazz_bcd05.cshrc; cdsprj Condor_R1; icfb&'
export CDS_LIC_FILE=5280@dc1
export TERM="xterm"
#export proj="/Homes/$USER/Projects/Rainier"
export proj="/Homes/$USER/workareas/projects/Whitney"
#export proj="/Homes/$USER/workareas/projects/Rainier"
source $proj/project.bashrc

#export TPS_PDK_ROOT=/ElevateSemi_OA/Libraries_Linux/TPSCo_PDK
#export TPS_PDK_TECH=tps65pmb
#export TPS_PDK_SPICE_SPECTRE_DIR=/ElevateSemi_OA/Libraries_Linux/TPSCo_PDK/tps65pmb/model/spectre/6M1L1F_HR2K_ZD_MIM25_default/
#export TPS_PDK_VARIANT=6M1L1F_HR2K_ZD_MIM25
#export TPS_PDK_CALIBRE_DIR=/ElevateSemi_OA/Libraries_Linux/TPSCo_PDK/tps65pmb/pv/calibre/6M1L1F_HR2K_ZD_MIM25_default/
#export PVS_HOME=/Apps/Cadence/PVS191
#export QRC_HOME=/Apps/Cadence/QUANTUS201

#export MGC_CALIBRE_DRC_RUNSET_FILE=$TPS_PDK_CALIBRE_DIR/calibre_interactive_drc
#export MGC_CALIBRE_LVS_RUNSET_FILE=$TPS_PDK_CALIBRE_DIR/calibre_interactive_lvs
#export MGC_CALIBRE_CUSTOMIZATION_FILE=$TPS_PDK_CALIBRE_DIR/calibre.custom
#export TPS_PDK_CALIBRE_XRC_DIR=/ElevateSemi_OA/Libraries_Linux/TPSCo_PDK/tps65pmb/pv/calibre_xRC/6M1L1F_HR2K_ZD_MIM25_default/
#export MGC_CALIBRE_PEX_RUNSET_FILE=$TPS_PDK_CALIBRE_XRC_DIR/calibre_interactive_pex
export CDS_INST_DIR=/Apps/Cadence_2020/IC618
#export PATH="/Apps/Cadence/IC618/bin:/Apps/Cadence/IC618/tools/bin:/Apps/Cadence/IC618/tools/dfII/bin:/Apps/Cadence/PVS191/bin:/Apps/Cadence/QUANTUS201/bin:/Apps/Cadence/SPECTRE191/bin:/Apps/Cadence/Assura41/bin:/Apps/Cadence/XCELIUM2003/bin:/Apps/Cadence/XCELIUM2003/tools/bin:/Apps/Cadence/INNOVUS191/bin:/Apps/Cadence/MODUS191/bin:/Apps/Cadence/SSV191/bin:/Apps/Cadence/GENUS191/bin:/Apps/Cadence/CONFRML192/bin:$PATH"
#alias cad=' cd $proj;virtuoso&'


export CLIOLMD_LICENSE_FILE=27000@DC1
export CLIOSOFT_DIR=/usr/local/Cliosoft/latest_sos
export PATH=$CLIOSOFT_DIR/bin:$PATH
export LD_LIBRARY_PATH="$CLIOSOFT_DIR/lib/64bit:$CLIOSOFT_DIR/lib:$LD_LIBRARY_PATH"
export GDM_USE_SHLIB_ENVVAR=1
export SOS_CDS_EXIT="yes"
>>>>>>> Stashed changes
