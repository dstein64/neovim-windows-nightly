@echo off

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
