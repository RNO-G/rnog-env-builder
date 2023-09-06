#!/bin/sh
# Setup script for trunk version of the ARA software

export RNO_G_SETUP_DIR="/data/condor_builds/users/baclark/RNOG/analysis/tools/rnog-env-builder/builds/trunk"
# If the fake path in RNO_G_SETUP_DIR wasn't replaced, try the working directory
if [ ! -d "$RNO_G_SETUP_DIR" ]; then
	export RNO_G_SETUP_DIR=$(pwd)
fi

export RNO_G_INSTALL_DIR="${RNO_G_SETUP_DIR%/}/RNO_G_build"
export RNO_G_DEPS_INSTALL_DIR="${RNO_G_SETUP_DIR%/}/misc_build"
export RNO_G_ROOT_DIR="${RNO_G_SETUP_DIR%/}/source/AraRoot"

export LD_LIBRARY_PATH="$RNO_G_INSTALL_DIR/lib:$RNO_G_DEPS_INSTALL_DIR/lib:$LD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="$RNO_G_INSTALL_DIR/lib:$RNO_G_DEPS_INSTALL_DIR/lib:$DYLD_LIBRARY_PATH"
export PATH="$RNO_G_INSTALL_DIR/bin:$RNO_G_DEPS_INSTALL_DIR/bin:$PATH"

# Run thisroot.sh using `.` instead of `source` to improve POSIX compatibility
. "${RNO_G_SETUP_DIR%/}/root_build/bin/thisroot.sh"

export SQLITE_ROOT="$RNO_G_DEPS_INSTALL_DIR"
export GSL_ROOT="$RNO_G_DEPS_INSTALL_DIR"
export FFTWSYS="$RNO_G_DEPS_INSTALL_DIR"

export BOOST_ROOT="$RNO_G_DEPS_INSTALL_DIR/include"

export CMAKE_PREFIX_PATH="$RNO_G_DEPS_INSTALL_DIR"

# add something about  mattak later

# # Warn about incompatible gcc versions
# export RNO_G_GCC_VERSION=$(strings -a "${RNO_G_SETUP_DIR%/}/source/AraSim/AraSim" | grep "GCC: (" | head -1 | cut -d " " -f 3)
# export SYS_GCC_VERSION=$($(command -v gcc) --version | head -1 | cut -d " " -f 3)
# if [ "$RNO_G_GCC_VERSION" = "4.8.5" ]; then
# 	case $SYS_GCC_VERSION in
# 		$RNO_G_GCC_VERSION )
# 			# gcc version exactly matches the version used to compile AraSim
# 			# (and presumably all other ARA software too then)
# 		;;
# 		4.* | 4.*.* )
# 			# gcc version is between 4.0.0 and 5.0.0
# 			echo "The RNO-G software was compiled with gcc version $RNO_G_GCC_VERSION."
# 			echo "Your system uses gcc version $SYS_GCC_VERSION, which should be similar enough."
# 		;;
# 		[123].* | [123].*.* )
# 			# gcc version is less than 4.0.0
# 			echo "The RNO-G software was compiled with gcc version $RNO_G_GCC_VERSION."
# 			echo "Your system uses gcc version $SYS_GCC_VERSION, which could result in some problems."
# 			echo "Consider using a new version of gcc."
# 		;;
# 		* )
# 			# gcc version is greater than 5.0.0
# 			# (at which point the string ABI changed)
# 			echo "The ARA software was compiled with gcc version $RNO_G_GCC_VERSION."
# 			echo "Your system uses gcc version $SYS_GCC_VERSION, which is likely to cause problems."
# 			echo "If you do any compilation against the ARA software you may need to add the '-D_GLIBCXX_USE_CXX11_ABI=0' flag."
# 		;;
# 	esac
# fi
# unset RNO_G_GCC_VERSION
# unset SYS_GCC_VERSION
