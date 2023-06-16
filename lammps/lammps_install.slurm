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
#SBATCH -o output1.out
cd
git clone -b release https://github.com/lammps/lammps.git lammps