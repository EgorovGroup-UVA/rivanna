#!/bin/bash
# Slurm script for building lammps in home directory
# -N <Number of nodes>
#SBATCH -N 1
#
# -n <total number of tasks>
#SBATCH -n 1
#
# --ntasks-per-node=<Number of processes (tasks) per node>
#SBATCH --ntasks-per-node=1
#
# -t <Wallclock time, d-hh:mm:ss>
#SBATCH -t 0-01:00:00
#
# -p <queue name>; 
#SBATCH -p dev
#
# - A <account to be charged>
#SBATCH -A softcomp
#
# -o <output file name>
#SBATCH -o output2.out
module load gcc
module load openmpi
module load cmake
cd
cd lammps
mkdir build
cd build
cmake ../cmake -D PKG_MOLECULE=yes -D PKG_KSPACE=yes -D PKG_RIGID=yes -D PKG_MANYBODY=yes -D PKG_REAXFF=yes -D PKG_MANYBODY=yes -D PKG_MC=yes -D PKG_EXP=yes
cmake --build .