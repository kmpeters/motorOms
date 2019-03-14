## Example vxWorks startup file

## The following is needed if your board support package doesn't at boot time
## automatically cd to the directory containing its startup script
#cd "/home/oxygen40/KPETERSN/epics/motor-split/OMS/omsIOC/iocBoot/iocoms"

< cdCommands
#< ../nfsCommands

cd topbin

## You may have to change oms to something else
## everywhere it appears in this file
ld 0,0, "oms.munch"

## Register all support components
cd top
dbLoadDatabase "dbd/oms.dbd"
oms_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadTemplate "db/oms.substitutions"
#dbLoadRecords "db/oms.db", "user=kpetersn"

cd startup
iocInit

## Start any sequence programs
#seq &sncxxx, "user=kpetersn"
