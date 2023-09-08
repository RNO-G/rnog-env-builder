# rnog-env-builder

# Overview
These scripts build a software stack to support the RNO-G data
reader software [mattak](https://github.com/RNO-G/mattak/tree/main). 
It also install mattak itself.
See [here](https://github.com/RNO-G/mattak/blob/main/doc/ReadingData.md) and [here](https://github.com/RNO-G/mattak/blob/main/INSTALL.md) for more information about compiling mattak and its dependencies.

It installs a series of packages, including:
* Boost
* CMake
* FFTW
* GSL
* python3
* ROOT 6
* libRootFftwWrapper
* mattak

The python installation also includes many of the
[dependencies](https://nu-radio.github.io/NuRadioMC/Introduction/pages/installation.html) required for NuRadioMC.

# Structure

Build scripts are stored in subdirectories of the `builders` directory. Setup scripts and any other static files are stored in subdirectories of the `builds` directory. See the README.md files in these subdirectories for more information. (And apologies for the confusion
between builders and builds...).

# Motivation

Installing new software is often challenging to do consistently.
These scripts automate away that process and allow us to deploy
the software consistently across different computing environments.


# Attribution

This package is based on the [cvmfs builders](https://github.com/ara-software/cvmfs) for the ARA collaboration, designed by Ben Hokanson-Fasig. Many thanks to them. 
