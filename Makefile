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
