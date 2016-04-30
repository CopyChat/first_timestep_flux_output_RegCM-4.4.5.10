# first_timestep_flux_output_RegCM-4.4.5.10
compare fluxes ( swdflx, swdflxc, swuflx, swuflxc, swhr, swhrc ) in rrtm vs (xxxx,xxx,xxx,xxx,xxx,xxx,xxx) in standard radiation code of RegCM-4.4.5.10


Thu Apr 21 07:33:25 CEST 2016
rrtm flux works well for :
1). 6 fluxes saved in tempserial within a map ; 
2). 1st output of 6 fluxes saved on one grid point



#=================================================== variabels
swuflx(:,:)       ! Total sky shortwave upward flux (W/m2)
swdflx(:,:)       ! Total sky shortwave downward flux (W/m2)
swhr(:,:)         ! Total sky shortwave radiative heating rate (K/d)
swuflxc(:,:)      ! Clear sky shortwave upward flux (W/m2)
swdflxc(:,:)      ! Clear sky shortwave downward flux (W/m2)
swhrc(:,:)        ! Clear sky shortwave radiative heating rate (K/d)


uflx(:,:)         ! Total sky longwave upward flux (W/m2)
dflx(:,:)         ! Total sky longwave downward flux (W/m2)
hr(:,:)           ! Total sky longwave radiative heating rate (K/d)
uflxc(:,:)        ! Clear sky longwave upward flux (W/m2)
dflxc(:,:)        ! Clear sky longwave downward flux (W/m2)
hrc(:,:)          ! Clear sky longwave radiative heating rate (K/d)
#=================================================== 

! fswup    - Spectrally summed up flux
! fswdn    - Spectrally summed down flux
!  qrs     - Solar heating rate

! ful     - Total upwards longwave flux
! fsul    - Clear sky upwards longwave flux
! fdl     - Total downwards longwave flux
! fsdl    - Clear sky downwards longwv flux
!  qrl    - Longwave cooling rate

#============================================================================ 
Var CCM     file        level         |  Var RRTM    file       level
#---------------------------------------------------------------------------- 
fswdn       fort.10     20(0, kzp1)   |  swdflx      fort.11    26(1, nlay+1)
fswun       fort.20     20(0, kzp1)   |  swuflx      fort.21    26(1, nlay+1)
qrs         fort.30     20(0, kzp1)   |  swhr        fort.31    26(1, nlay+1)

XXX         fort.41     20(0, kzp1)   |  swdflxc     fort.41    26(1, nlay+1)
XXX         fort.51     20(0, kzp1)   |  swuflxc     fort.51    26(1, nlay+1)
XXX         fort.61     20(0, kzp1)   |  swhrc       fort.61    26(1, nlay+1)
#---------------------------------------------------------------------------- 
fdl         fort.1000   20(0, kzp1)   |  dflx        fort.1001  26(1, nlay+1) 
ful         fort.2000   20(0, kzp1)   |  uflx        fort.2001  26(1, nlay+1)
qrl         fort.3000   20(0, kzp1)   |  hr          fort.3001  26(1, nlay+1)

fsdl        fort.4000   20(0, kzp1)   |  dflxc       fort.4001  26(1, nlay+1)
fsul        fort.5000   20(0, kzp1)   |  uflxcc      fort.5001  26(1, nlay+1)
qrl         fort.6000   20(0, kzp1)   |  hrc         fort.6001  26(1, nlay+1)
#============================================================================ 
#!!! rrtm_lw_rad flx have not been outputed yet.


