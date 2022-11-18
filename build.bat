

mkdir build

cd build

cmake -G "MinGW Makefiles" -D"CMAKE_MAKE_PROGRAM:PATH=cmake/Toolchain/mingw32-make.exe" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_ECLIPSE_GENERATE_SOURCE_PROJECT=TRUE -DCMAKE_ECLIPSE_MAKE_ARGUMENTS=-j8 ./src

cmake --build .


