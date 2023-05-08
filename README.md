### Assembly Greeting

This *Assembly* code can be assembled by a tool such as NASM into machine code that can be executed directly by the CPU. It prints a message to the console and then exits.

### Quick Start

Before you begin, ensure that you have installed the NASM package on your MacOS system.
To check if NASM is installed, enter the following command in a terminal

```
nasm -v
```

To compile the Assembly file into hexadecimal representation, use the following command

```
nasm -f macho64 [filename].asm
```

To check the contents of the compiled file, use the following command

```
hexdump -C [filename].o
```

To link the compiled file and create an executable file, use the following command

```
ld -lSystem [filename].o
```

Finally, to run the executable, enter the following command

```
./[filename].out
```
