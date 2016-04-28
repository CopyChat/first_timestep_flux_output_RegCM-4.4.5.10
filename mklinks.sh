#!/bin/bash - 
#===============================================================================
#
#          FILE: mklinks.sh
# 
USAGE="./mklinks.sh  "
# 
#   DESCRIPTION:   make links to the source code in RegCM 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Tang (Tang), chao.tang.1@gmail.com
#  ORGANIZATION: le2p
#       CREATED: 04/28/16 16:16:00 CEST
#      REVISION:  ---
#===============================================================================

#set -o nounset                             # Treat unset variables as an error
shopt -s extglob 							# "shopt -u extglob" to turn it off
source ~/Shell/functions.sh      			# TANG's shell functions.sh
#=================================================== 

RegCM_Dir='/home/ctang/RRTM_test/RegCM-4.4.5.10'


ln -f mod_rad_radiation.F90 $RegCM_Dir/Main/radlib/mod_rad_radiation.F90
ln -f mod_rad_outrad.F90 $RegCM_Dir/Main/radlib/mod_rad_outrad.F90
ln -f mod_rad_atmosphere.F90 $RegCM_Dir/Main/radlib/mod_rad_atmosphere.F90
ln -f mod_rrtmg_driver.F90 $RegCM_Dir/Main/radlib/mod_rrtmg_driver.F90
ln -f rrtmg_sw_rad.F90 $RegCM_Dir/Main/radlib/rrtmg_sw_rad.F90
ln -f mod_regcm_types.F90 $RegCM_Dir/Main/radlib/mod_rad_colmod3.F90
ln -f mod_rad_interface.F90 $RegCM_Dir/Main/mod_rad_interface.F90
ln -f mod_atm_interface.F90 $RegCM_Dir/Main/mod_atm_interface.F90
ln -f mod_ncout.F90 $RegCM_Dir/Main/mpplib/mod_ncout.F90
ln -f mod_rad_colmod3.F90 $RegCM_Dir/Main/radlib/mod_rad_colmod3.F90

echo done
