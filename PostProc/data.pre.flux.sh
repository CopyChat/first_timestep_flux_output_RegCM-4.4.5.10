#!/bin/bash - 
#===============================================================================
#
#          FILE: data.pre.flux.sh
# 
USAGE=" ./data.pre.flux.sh  "
# 
#   DESCRIPTION:  prepare the data to plot flux
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Tang (Tang), chao.tang.1@gmail.com
#  ORGANIZATION: le2p
#       CREATED: 12/02/15 12:01:02 CET
#      REVISION:  ---
#===============================================================================

#set -o nounset                             # Treat unset variables as an error
shopt -s extglob 							# "shopt -u extglob" to turn it off
source ~/Shell/functions.sh      			# TANG's shell functions.sh
#=================================================== 
DIR=$(pwd)

function get_data
{
for hour in 09 12 15
do
   cd $DIR/flux/fort.${hour}/
   for f in $(ls fort.??) 
   do 
       cp $f $DIR/${hour}.$f.flux
   done
   cd $DIR
done
}
function mergetime
{

    for tag in 21 51 11 31 51 61
    do
        seq -s " " 1 26 > level.$tag.temp
        echo " " >> level.$tag.temp
        for h in 09 12 15
        do
            # 15.fort.10000.flux
            transpose.sh $h.fort.$tag.flux >> level.$tag.temp
            #cat level.$tag.temp
        done
        transpose.sh level.$tag.temp > $tag.flux
        cat $tag.flux
    done
}
function clean
{
    rm *.fort.?1*.flux level.?1.temp
}


function rename
{
mv 21.flux swuflx.dat
mv 51.flux swuflxc.dat
mv 11.flux swdflx.dat
mv 31.flux swdflxc.dat
mv 51.flux swhr.dat
mv 61.flux swhrc.dat
}
get_data
mergetime
#clean
#rename
