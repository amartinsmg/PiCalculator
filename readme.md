# Pi

A &pi; (pi) calculator program in some different languages. It uses the the Gregory-Leibniz series to calculate the irrational number &pi;.

$\pi = \frac{4}{1} - \frac{4}{3} + \frac{4}{5} - \frac{4}{7} + \frac{4}{9} - \frac{4}{11} + \frac{4}{13} ...$

&pi; is a mathematical constant that is the ratio of a circle's circunference to its diameter, approximately equal to 3.14159265, and is used in many formulas in math and physics.

The main objective of this project is to observe the difference in syntax and runtime of each programming language.

The measurements in the table below were performed using the `time` command in Git Bash. The items are organized by execution time.

| Language | Compiler/ Interpreter | Source file size | Built file size| Average Runtime |
| --- | --- | --- | --- | --- |
| <a href="./src/pi.c">C</a> | GNU C Compiler (MinGW) 8.1.0 | 385B |57.1KB| 1.234s |
| <a href="./src/pi.cpp">C++</a> | GNU C++ Compiler (MinGW) 8.1.0 | 385B |86.4KB| 1.235s |
| <a href="./src/pi.f90">Fortran</a> | GNU Fortran (MinGW) 8.1.0 | 488B | 377KB| 1.244s |
| <a href="./src/pi.go">Go</a> | Go 1.18.3 | 409B | 1.872KB| 1.286s |
| <a href="./src/pi.pp">Pascal</a> | Free Pascal Compiler 3.2.2| 435B| 207KB| 1.319s |
| <a href="./src/pi.rs">Rust</a> | Rust 1.61.0 |378B| 4.442KB| 1.327s |
| <a href="./src/pi.vb">Visual Basic .NET</a> | Microsoft Visual Basic Compiler 14.8.4161|504B| 7KB| 1.448s|
| <a href="./src/pi.cs">C#</a> | Microsoft Visual C# Compiler 4.8.41 | 532B | 4KB| 1.562s |
| <a href="./src/Pi.java">Java</a> | Java RE 18.0.1 | 443B | 1KB | 1.565s |
| <a href="./src/pi.kt">Kotlin</a> | Kotlin 1.5.0 (JRE 18.0.1) | 381B | 4400KB| 1.608s |
| <a href="./src/pi.jl">Julia</a> | Julia 1.7.2 | 280B | - | 1.792s |
| <a href="./src/pi.js">Javascript</a> | Node 16.14.0 | 285B | - | 2.218s |
| <a href="./src/pi.dart">Dart</a> | Dart SDK 2.18.0 | 363B | - | 5.553s |
| <a href="./src/pi.php">PHP</a> | Zend Engine 4.1.7 | 304B | - | 49.859s |
| <a href="./src/pi.py">Python</a> | CPython 3.10.5 |246B | - | 2m 22.004s |
| <a href="./src/pi.rb">Ruby</a> | Ruby 3.1.2 |263B| - | 2m 47.911s |
| <a href="./src/pi.pl">Perl</a> | Perl 5.34.0 | 304B| - | 3m 11.162s |
| <a href="./src/pi.r">R</a> | Rscript 4.2.0 | 297B| - | 3m 51.407s |

<sup>Builds and runs were performed using a laptop with Windows 10.0.22000, Intel Core i5-8250U and 8 GB of RAM in GNU bash 4.4.23.<sup>

All source files can be compiled using this command:
````
make
````
<sub>**Note**: before compiling, make sure you have all compilers installed.</sub>


If you want to compile single source files, you can add the file extension after the `make` command, e.g., to compile just the version written in C, use this command:
````
make c
````
