@echo off

"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x64
cd neovim
mkdir .deps
cd .deps
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..\third-party
cmake --build .
cd ..
mkdir build
cd build
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=..\..\Neovim ..
cmake --build .
ninja
ninja install
cd ..\..
