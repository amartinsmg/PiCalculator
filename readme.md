# PiCalculator

PiCalculator is an exploratory multi-language project that implements the Gregory–Leibniz series to approximate π (pi) across multiple programming languages.

The main objective is to compare:

- Syntax and language expressiveness
- Runtime behavior (CPU-bound workload)
- Compiler vs interpreter performance
- Binary size differences
- Toolchain characteristics across ecosystems

This project is not intended to provide a rigorous benchmark, but rather a controlled computational experiment under similar conditions.

---

## Algorithm

All implementations approximate π using the Gregory–Leibniz infinite series:

$$
\pi = \sum_{n=0}^{\infty} \frac{4(-1)^n}{2n + 1}
$$

Each program:

1. Iterates `10^precision` times.
2. Alternates between addition and subtraction.
3. Divides 4 by successive odd numbers.
4. Accumulates the result in a floating-point variable.

Example (conceptually):

```text
π ≈ 4/1 − 4/3 + 4/5 − 4/7 + ...
```

The `main` function typically calls:

```text
calculatePi(9)
```

resulting in 1,000,000,000 iterations.

This creates a CPU-intensive workload suitable for observing runtime differences across languages.

---

## Runtime Results

Measurements were taken using the time command in Git Bash on:

- Windows 10 (10.0.22000)
- Intel Core i5-8250U
- 8GB RAM

Results sorted by average runtime:

| Language                         | Compiler/ Runtime                         | Built file size | Average Runtime |
| -------------------------------- | ----------------------------------------- | --------------- | --------------- |
| [C](./src/pi.c)                  | GNU C Compiler (MinGW) 8.1.0              | 57.1KB          | 1.234s          |
| [C++](./src/pi.cpp)              | GNU C++ Compiler (MinGW) 8.1.0            | 86.4KB          | 1.235s          |
| [Fortran](./src/pi.f90)          | GNU Fortran (MinGW) 8.1.0                 | 377KB           | 1.244s          |
| [Go](./src/pi.go)                | Go 1.18.3                                 | 1874KB          | 1.286s          |
| [Pascal](./src/pi.pp)            | Free Pascal Compiler 3.2.2                | 207KB           | 1.319s          |
| [Rust](./src/pi.rs)              | Rust 1.61.0                               | 4442KB          | 1.327s          |
| [Visual Basic .NET](./src/pi.vb) | Microsoft Visual Basic Compiler 14.8.4161 | 7KB             | 1.448s          |
| [C#](./src/pi.cs)                | Microsoft Visual C# Compiler 4.8.41       | 4KB             | 1.562s          |
| [Java](./src/Pi.java)            | Java RE 18.0.1                            | 1KB             | 1.565s          |
| [Kotlin](./src/pi.kt)            | Kotlin 1.5.0 (JRE 18.0.1)                 | 4400KB          | 1.608s          |
| [Julia](./src/pi.jl)             | Julia 1.7.2                               | -               | 1.792s          |
| [Javascript](./src/pi.js)        | Node 16.14.0                              | -               | 2.218s          |
| [Dart](./src/pi.dart)            | Dart SDK 2.18.0                           | -               | 5.553s          |
| [PHP](./src/pi.php)              | Zend Engine 4.1.7                         | -               | 49.859s         |
| [Python](./src/pi.py)            | CPython 3.10.5                            | -               | 2m 22.004s      |
| [Ruby](./src/pi.rb)              | Ruby 3.1.2                                | -               | 2m 29.382s      |
| [Perl](./src/pi.pl)              | Perl 5.34.0                               | -               | 3m 11.162s      |
| [R](./src/pi.r)                  | Rscript 4.2.0                             | -               | 3m 51.407s      |
| [Octave](./src/pi.m)             | GNU Octave 7.2.0                          | -               | 99m 7.085s      |

---

## Optimization Notes

Compiler optimizations were enabled whenever applicable. Native compiled languages were built with optimization flags (C, C++, and Fortran with `-O1`; Pascal with `-O2`; Rust with `-O` release optimization), while Go was compiled using its default optimized build settings. JVM and .NET implementations rely primarily on JIT and runtime optimizations rather than static compiler flags.

Optimization levels were not strictly standardized across all toolchains, as each ecosystem follows distinct compilation models — including ahead-of-time (AOT), just-in-time (JIT), and interpreted execution. Because of these structural differences, achieving strict equivalence in optimization settings across languages is not always feasible.

The objective of this project was practical comparability under similar conditions, rather than academically rigorous or fully controlled benchmarking.

---

## Observations

- Compiled languages cluster around ~1.2–1.6 seconds.
- JIT-based runtimes perform competitively.
- Interpreted languages show significant slowdown under large iteration counts.
- Binary size varies drastically across ecosystems (from KB to several MB).

This highlights differences in:

- Optimization strategies
- Runtime overhead
- Floating-point handling
- Compilation model (AOT vs JIT vs interpreted)

---

## Build System

Compilation is handled via a centralized `Makefile`.

To compile all implementations:

```sh
make
```

To compile a specific language:

```sh
make c
make cpp
make go
make rs
make java
make cs
```

The Makefile maps each target to its respective compiler or runtime toolchain.

Ensure all compilers/interpreters are installed before running the build.

---

## Limitations

- Optimization was enabled where applicable, but not strictly standardized across toolchains.
- No warm-up iterations for JIT runtimes.
- No CPU affinity control.
- No statistical averaging beyond basic timing.
- Floating-point precision differences were not deeply analyzed.

Results reflect a simplified single-threaded execution model.

---

## Purpose

This repository serves as a computational playground to explore:

- Cross-language implementation consistency
- CPU-bound performance differences
- Toolchain behavior
- Binary output characteristics

It serves as a personal laboratory focused purely on arithmetic workload, rather than a definitive performance benchmark.
