{
    gSystem->Load("libsqlite3.so");
    gSystem->Load("libfftw3.so");
    gSystem->Load("libgsl.so");
    gSystem->Load("libMathMore.so");
    gSystem->Load("libGeom.so");
    gSystem->Load("libGraf3d.so");
    gSystem->Load("libPhysics.so");
    gSystem->Load("libRootFftwWrapper.so");
    gSystem->AddIncludePath("-I${RNO_G_INSTALL_DIR}/include");
    gSystem->AddIncludePath("-I${RNO_G_INSTALL_DIR}/lib");
    gSystem->AddIncludePath("-I${RNO_G_DEPS_INSTALL_DIR}/include");
    gSystem->AddIncludePath("-I${RNO_G_DEPS_INSTALL_DIR}/lib");
    gSystem->AddIncludePath("-I FFTtools.h");
    gROOT->ProcessLine("#include <FFTtools.h>");

}