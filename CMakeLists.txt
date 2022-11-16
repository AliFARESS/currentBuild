cmake_minimum_required (VERSION 2.6)

project (hello_world)

set(SRCS
	main.c
	hello.c
	)
	
set(HEADERS
hello.h
)

# On indique que l'on veut un exécutable "hello" compilé à partir des fichiers décrit par les variables SRCS et HEADERS
add_executable(hello ${SRCS} ${HEADERS})
