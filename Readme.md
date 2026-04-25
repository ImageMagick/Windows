# Building ImageMagick on Windows.

This document describes the requirements and instructions to build ImageMagick for Windows on your own machine.

### Requirements

- Visual Studio (preferably the latest version)
- Git for Windows
- AMD APP SDK (optional for OpenCL support)

### Install Visual Studio dependencies

To build ImageMagick with Visual Studio the following components should be installed:

- Desktop development with C++ (workload)
- Visual C++ ATL build tools
- Visual C++ MFC build tools

Naming of these components might differ between versions of Visual Studio.

### Clone the dependencies

The ImageMagick library is built with a number of third party libraries. Run `clone-repositories-im7.cmd` to clone
these libraries and the ImageMagick library. To clone the legacy ImageMagick 6 library and it's dependencies
run `clone-repositories-im6.cmd`.

### Build Configure.exe

One of the folders in this project is called `Configure`. This folder contains the solution file `Configure.sln` that
is compatible with the latest version of Visual Studio. Open this solution file in Visual Studio and build the
`Configure` project. This will create the `Configure` executable in the `Configure/Artifacts` folder. Running this
program will start a Wizard that allows configuration of ImageMagick and its individual components.

### Build ImageMagick

Depending on which options were chosen when running `Configure` a solution file will be created in the root folder of
this project. Open this solution file in Visual Studio to start building ImageMagick. The binaries and libraries will be
created in the `Artifacts` folder.