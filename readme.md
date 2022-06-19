# Pi

A &pi; (pi) calculator program in some different languages. It uses the the Gregory-Leibniz series to calculate the irrational number &pi;.

$\pi = \frac{4}{1} - \frac{4}{3} + \frac{4}{5} - \frac{4}{7} + \frac{4}{9} - \frac{4}{11} + \frac{4}{13} ...$

&pi; is a mathematical constant that is the ratio of a circle's circunference to its diameter, approximately equal to 3.14159265, and is used in many formulas in math and physics.

The main objective of this project is to observe the difference in syntax and runtime of each programming language.

The measurements in the table below were performed using the `time` command in Git Bash. The items are organized by execution time.

| Language | Compiler/ Interpreter | Compile time| Execution time |
| --- | --- | --- | --- |
| <a href="./src/pi.rs">Rust</a> | Rust 1.61.0 | 0.830s | 1.332s |
| <a href="./src/pi.c">C</a> | GNU C Compiler (MinGW) 8.1.0 | 0.298s | 1.414s |
| <a href="./src/pi.cpp">C++</a> | GNU C++ Compiler (MinGW) 8.1.0 | 0.486s | 1.422s |
| <a href="./src/pi.f90">Fortran 90</a> | GNU Fortran (MinGW) 8.1.0 | 0.321s | 1.425s |
| <a href="./src/pi.cs">C#</a> | Microsoft Visual C# Compiler 4.8.41 | 0.366s | 1.459s |
| <a href="./src/pi.go">Go</a> | Go 1.18.3 | 0.442s | 1.530s |
| <a href="./src/pi.java">Java</a> | Java RE 18.0.1 | 1.390s | 1.593s |
| <a href="./src/pi.kt">Kotlin</a> | Kotlin 1.5.0 (JRE 18.0.1) | 8.306s | 1.911s |
| <a href="./src/pi.js">Javascript</a> | Node 16.14.0 | - | 2.044s |
| <a href="./src/pi.pp">Pascal</a> | Free Pascal Compiler 3.2.2| 0.167s | 2.807s |
| <a href="./src/pi.jl">Julia</a> | Julia 1.7.2 | - | 4.355s |
| <a href="./src/pi.dart">Dart</a> | Dart SDK 2.18.0 | - | 5.624s |
| <a href="./src/pi.php">PHP</a> | PHP 8.1.7 (cli)| - | 50.204s |
| <a href="./src/pi.py">Python</a> | CPython 3.10.5 | - | 2m 25.860s |
| <a href="./src/pi.rb">Ruby</a> | Ruby 3.1.2 | - | 2m 42.240s |
| <a href="./src/pi.r">R</a> | Rscript 4.2.0 | - | 3m 53.132s |

Builds and runs were performed using a laptop with Windows 10.0.22000, Intel Core i5-8250U and 8 GB of RAM in GNU bash 4.4.23.
