# This Makefile compiles the pi.c, pi.cpp, pi.cs, pi.f90, pi.go, Pi.java, pi.kt, pi.pp, pi.rs, and pi.vb files, generating the respective executables or jars. The -O1 flag is used for optimization in C, C++, Fortran and Rust.

# Targets
# `all`: compiles all files.
# `c`: compiles pi.c using GCC.
# `cpp`: compiles pi.cpp using G++.
# `cs`: compiles pi.cs using the C# compiler.
# `f90`: compiles pi.f90 using gfortran.
# `go`: compiles pi.go using Go compiler.
# `java`: compiles Pi.java and generates the pi_java.jar file using jar.
# `kt`: compiles pi.kt and generates the pi_kt.jar file using Kotlin compiler.
# `pp`: compiles pi.pp using the Free Pascal Compiler.
# `rs`: compiles pi.rs using Rust compiler.
# `vb`: compiles pi.vb using the VB compiler.

# Directories
# The `dir` target creates the build directory if it doesn't exist.

# Notes
# The `class` target compiles Pi.java to .class files.

all: c cpp cs f90 go java kt pp rs vb

dir:
	[ -d build ] || mkdir build

c: dir
	gcc -O1 -o build/pi_c src/pi.c

cpp: dir
	g++ -O1 -o build/pi_cpp src/pi.cpp

cs: dir
	csc /out:build/pi_cs "src\\pi.cs"

f90: dir
	gfortran -O1 -o build/pi_f90 src/pi.f90

go: dir
	go build -o build/pi_go src/pi.go

class: dir
	javac -d build src/Pi.java

java: class
	jar -cfe build/pi_java.jar Pi -C build . && rm build/*.class

kt: dir
	kotlinc -include-runtime -d build/pi_kt.jar src/pi.kt 
  
pp: dir
	fpc -Px86_64 -O2 -FE"build" -o"pi_pp" src/pi.pp && rm build/*.o

rs: dir
	rustc -o build/pi_rs -O src/pi.rs
  
vb: dir
	vbc /out:build/pi_vb "src\\pi.vb"
