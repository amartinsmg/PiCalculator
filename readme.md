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

- Windows 10
- Intel Core i5-8250U
- 8GB RAM

Results sorted by average runtime:

| Language                         | Compiler/ Runtime                         | Average Runtime |
| -------------------------------- | ----------------------------------------- | --------------- |
| [C](./src/pi.c)                  | GNU C Compiler (MinGW) 8.1.0              | 1.234s          |
| [C++](./src/pi.cpp)              | GNU C++ Compiler (MinGW) 8.1.0            | 1.235s          |
| [Fortran](./src/pi.f90)          | GNU Fortran (MinGW) 8.1.0                 | 1.244s          |
| [Go](./src/pi.go)                | Go 1.18.3                                 | 1.286s          |
| [Pascal](./src/pi.pp)            | Free Pascal Compiler 3.2.2                | 1.319s          |
| [Rust](./src/pi.rs)              | Rust 1.61.0                               | 1.327s          |
| [Visual Basic .NET](./src/pi.vb) | Microsoft Visual Basic Compiler 14.8.4161 | 1.448s          |
| [Swift](./src/pi.swift)          | Swift 6.2.4                               | 1.542s          |
| [C#](./src/pi.cs)                | Microsoft Visual C# Compiler 4.8.41       | 1.562s          |
| [Java](./src/Pi.java)            | Java RE 18.0.1                            | 1.565s          |
| [Kotlin](./src/pi.kt)            | Kotlin 1.5.0 (JRE 18.0.1)                 | 1.608s          |
| [Julia](./src/pi.jl)             | Julia 1.7.2                               | 1.792s          |
| [Javascript](./src/pi.js)        | Node 16.14.0                              | 2.218s          |
| [Dart](./src/pi.dart)            | Dart SDK 2.18.0                           | 5.553s          |
| [PHP](./src/pi.php)              | Zend Engine 4.1.7                         | 49.859s         |
| [Python](./src/pi.py)            | CPython 3.10.5                            | 2m 22.004s      |
| [Ruby](./src/pi.rb)              | Ruby 3.1.2                                | 2m 29.382s      |
| [Perl](./src/pi.pl)              | Perl 5.34.0                               | 3m 11.162s      |
| [R](./src/pi.r)                  | Rscript 4.2.0                             | 3m 51.407s      |
| [Octave](./src/pi.m)             | GNU Octave 7.2.0                          | 99m 7.085s      |

---

## Optimization Notes

Compiler optimizations were applied selectively when they produced measurable performance improvements. For some languages, enabling optimization flags (such as `-O1`, `-O2`, or release builds) reduced execution time and were therefore kept. In other cases, optimizations produced no meaningful difference, so the programs were compiled using default settings.

Because the languages in this project rely on different execution models — including ahead-of-time compilation (AOT), just-in-time compilation (JIT), and interpreted runtimes — optimization mechanisms vary significantly between ecosystems.

As a result, optimization levels were not strictly standardized across all implementations. The goal was to reflect realistic compilation practices and obtain practical runtime comparisons rather than perform academically rigorous benchmarking.

---

## Observations

- Compiled languages cluster around ~1.2–1.6 seconds.
- JIT-based runtimes perform competitively.
- Interpreted languages show significant slowdown under large iteration counts.

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
