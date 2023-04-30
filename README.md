If you are on MacOS, be sure you have installed _nasm_ package

```
nasm -v
```

Compile file to hexadecimal representation

```
nasm -f macho64 [filename].asm
```

Check the file contents

```
hexdump -C [filename].o
```

Linking

```
ld -lSystem [filename].o
```

Run the executable

```
./[filename].out
```
