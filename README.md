# Mini Shell

This project is my own implementation of a simple shell for Linux,
supporting basic shell features. The exact feature set has not been decided yet.
The project is currently under development.

## 🎯 Goals
I want to improve my C programming skills and expand my knowledge of
the fundamentals of Linux. Through this project, I aim to gain
practical experience with:

- process creation and management
- file descriptors
- inter-process communication (IPC)
- signal handling
- memory management
- command parsing
- error handling
- debugging
I also want to learn how to write and maintain technical documentation.

## 🛠️ Toolchain
- OS: Linux (`Ubuntu 24.04.5 LTS`)
- Language: C11
- Compiler: GCC (`GNU GCC 13.3.0`)
- Debugger: GDB (`GNU GDB 15.1`)
- Build system: `GNU Make 4.3`

## 📋 Project Structure
```text
mini-shell/
├── src/
│   └── main.c
├── .gitignore
├── LICENSE
├── Makefile
└── README.md
```

## 🏗️ Building
To compile the project:
```Bash
make all
```
or just:
```Bash
make
```

To automatically run the project:
```Bash
make run
```

To clean the artifacts:
```Bash
make clean
```

To run the project and remove generated build files:
```Bash
make demo
```