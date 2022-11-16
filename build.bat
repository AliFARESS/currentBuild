mkdir debug
cd debug

cmake -G "Eclipse CDT4 - MinGW Makefiles" -D"CMAKE_MAKE_PROGRAM:PATH=cmake/Toolchain/mingw32-make.exe" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_ECLIPSE_GENERATE_SOURCE_PROJECT=TRUE -DCMAKE_ECLIPSE_MAKE_ARGUMENTS=-j8 ../src

cd ..

cmake --build ./debug


