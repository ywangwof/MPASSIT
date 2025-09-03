help([[
Load environment to compile MPASSIT for MPAS-WoFS on Jet
]])

whatis("Description: MPASSIT build environment")

prepend_path("MODULEPATH", '/contrib/spack-stack/spack-stack-1.6.0/envs/unified-env-rocky8/install/modulefiles/Core')

-- below two lines get us access to the spack-stack modules
load("stack-intel/2021.5.0")
load("stack-intel-oneapi-mpi/2021.5.1")
-- JCSDA has 'jedi-fv3-env/unified-dev', but we should load these manually as needed
load("cmake/3.23.1")

load("hdf5/1.14.0")
load("parallel-netcdf/1.12.2")
load("netcdf-c/4.9.2")
load("nccmp/1.9.0.1")
load("netcdf-fortran/4.6.1")
load("nco/5.0.6")

load("esmf")

setenv("CMAKE_C_COMPILER", "mpiicc")
setenv("CMAKE_CXX_COMPILER", "mpiicpc")
setenv("CMAKE_Fortran_COMPILER", "mpiifort")
