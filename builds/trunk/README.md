# builds/trunk

Static files for the trunk version of RNO-G software.

## Version information

This version is intended to represent the latest versions of all RNO-G software. It should also have the latest versions of dependencies where reasonable.

### Package versions

| Package            | Version/Commit   |
| ------------------ | ---------------- |
| CMake              | 3.27.4           |
| FFTW               | 3.3.10           |
| GSL                | 2.7              |
| Boost              | 1.83.0           |
| Python             | 3.11.5           |
| ROOT               | 6.28.06          |
| mattak             | master           |

## Contents

This directory initially only contains static files which aren't build-dependent. If you choose to install here, you should see this directory populated with:

* setup.sh - A setup script which can be run to set all necessary paths to use this version of the software
* source - A directory containing the source files of all packages listed above
* rno\_build - A directory containing the compiled files of ARA-specific software
* root\_build - A directory containing the compiled files of ROOT alone
* misc\_build - A directory containing the compiled files of all other packages

## Setup script

The `setup.sh` script is designed to be `source`d by users of the RNO software to set the appropriate paths and other environment variables for working with the RNO software. If your install destination was this folder, you should run `source /path/to/rnog-env-builder/build/trunk/setup.sh` when setting up your environment.
