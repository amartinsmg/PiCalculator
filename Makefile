all: c cpp cs f90 go java kt pp rs vb
	@echo Compiled successfully

c:
	gcc -O1 -o build/pi_c src/pi.c

cpp:
	g++ -O1 -o build/pi_cpp src/pi.cpp

cs:
	csc /out:build/pi_cs src\\pi.cs

f90:
	gfortran -O1 -o build/pi_f90 src/pi.f90

go:
	go build -o build/pi_go src/pi.go

class:
	javac -d build src/Pi.java

java: class
	jar -cfe build/pi_java.jar Pi -C build . && rm build/*.class

kt:
	kotlinc src/pi.kt -include-runtime -d build/pi_kt.jar
  
pp:
	fpc -Px86_64 -O2 -FE"build" -o"pi_pp" src/pi.pp && rm build/*.o

rs:
	rustc -o build/pi_rs -O src/pi.rs
  
vb:
	vbc /out:build/pi_vb src\\pi.vb
