#!/bin/bash
# Compile rosco code using:
# ./compile-fortran.sh libROSCO

gfortran -g -Wall -Wno-unused-variable -Wno-unused-dummy-argument -fdefault-real-8 -fdefault-double-8 -ffree-form -fPIC -DIMPLICIT_DLLEXPORT -ffree-line-length-0 -c ../src/Constants.f90 
gfortran -g -Wall -Wno-unused-variable -Wno-unused-dummy-argument -fdefault-real-8 -fdefault-double-8 -ffree-form -fPIC -DIMPLICIT_DLLEXPORT -ffree-line-length-0 -c ../src/ROSCO_Types.f90 
gfortran -g -Wall -Wno-unused-variable -Wno-unused-dummy-argument -fdefault-real-8 -fdefault-double-8 -ffree-form -fPIC -DIMPLICIT_DLLEXPORT -ffree-line-length-0 -c ../src/SysFiles/SysGnuLinux.f90 
gfortran -g -Wall -Wno-unused-variable -Wno-unused-dummy-argument -fdefault-real-8 -fdefault-double-8 -ffree-form -fPIC -DIMPLICIT_DLLEXPORT -ffree-line-length-0 -c ../src/ROSCO_Helpers.f90
gfortran -g -Wall -Wno-unused-variable -Wno-unused-dummy-argument -fdefault-real-8 -fdefault-double-8 -ffree-form -fPIC -DIMPLICIT_DLLEXPORT -ffree-line-length-0 -c ../src/Filters.f90 
gfortran -g -Wall -Wno-unused-variable -Wno-unused-dummy-argument -fdefault-real-8 -fdefault-double-8 -ffree-form -fPIC -DIMPLICIT_DLLEXPORT -ffree-line-length-0 -c ../src/Functions.f90
gfortran -g -Wall -Wno-unused-variable -Wno-unused-dummy-argument -fdefault-real-8 -fdefault-double-8 -ffree-form -fPIC -DIMPLICIT_DLLEXPORT -ffree-line-length-0 -c ../src/ControllerBlocks.f90 
gfortran -g -Wall -Wno-unused-variable -Wno-unused-dummy-argument -fdefault-real-8 -fdefault-double-8 -ffree-form -fPIC -DIMPLICIT_DLLEXPORT -ffree-line-length-0 -c ../src/ReadSetParameters.f90 
gfortran -g -Wall -Wno-unused-variable -Wno-unused-dummy-argument -fdefault-real-8 -fdefault-double-8 -ffree-form -fPIC -DIMPLICIT_DLLEXPORT -ffree-line-length-0 -c ../src/Controllers.f90 
gfortran -g -Wall -Wno-unused-variable -Wno-unused-dummy-argument -fdefault-real-8 -fdefault-double-8 -ffree-form -fPIC -DIMPLICIT_DLLEXPORT -ffree-line-length-0 -c ../src/DISCON.F90 

gfortran -shared SysGnuLinux.o Constants.o ControllerBlocks.o Controllers.o DISCON.o ROSCO_Types.o ROSCO_Helpers.o Filters.o Functions.o ReadSetParameters.o -o "$1".so
echo "Finished compiling ROSCO for cRIO. Check for .so file"