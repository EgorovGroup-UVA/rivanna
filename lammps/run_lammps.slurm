#!/bin/bash
# Slurm script for building lammps in home directory
# -N <Number of nodes>
#SBATCH -N 1
#
# -n <total number of tasks>
#SBATCH -n 40
#
# --ntasks-per-node=<Number of processes (tasks) per node>
#SBATCH --ntasks-per-node=40
#
# -t <Wallclock time, d-hh:mm:ss>
#SBATCH -t 0-00:00:00
#
# -p <queue name>; 
#SBATCH -p standard
#
# - A <account to be charged>
#SBATCH -A softcompt
#
# -o <output file name>
#SBATCH -o case3.out
module load gcc
module load openmpi
mpirun -np 40 PATH/lmp -in input.lammps
