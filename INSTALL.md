# Setting up the repository

This is your average pret-style GBA decompilation project. The build is
driven by a Makefile and should be performed in an environment that
resembles a POSIX operating system. (On Windows, that means either WSL
or a compatibility layer like MSys2 or Cygwin.)

A lot of these instructions will be very similar to the build
instructions for other more popular GBA decompilations. If anything
seems unclear, try reading the build instructions from the
[Pokémon Emerald](https://github.com/pret/pokeemerald/blob/f9c826ca576395d1960fd7b5a0e84007e8411573/INSTALL.md)
English version decompilation. They give more specific guidance for
various operating systems.

## Dependencies

* A shell like Bash (unknown if all the shell stuff is pure POSIX)
* Modern POSIX-ish `make` (tested with GNU Make)
* ARM binutils (part of devkitARM; I use the Debian package
  `binutils-arm-none-eabi` instead)
* A C preprocessor (covered by devkitARM; otherwise, your default
  host system C compiler is called with `-E` to perform preprocessing)
* `git`, to download the repository
* A vanilla, Japanese Mother 1+2 ROM

Decompilation-specific tool binaries are provided for Windows users. You
need to bring your own copy of GNU Make and Bash, though.

If you're not on Windows, or you want to build the tools yourself for
other reasons, you also need:

* A C++ compiler for your own computer, like `g++` or `clang++`
* A C compiler for your own computer, like `gcc` or `clang`
* C development headers for `libpng` (package name is usually something
  like `libpng-dev` or `libpng-devel`); this should also install
  libpng itself
* A copy of the [`agbcc`](https://github.com/pret/agbcc) repository

### Manually building and installing `agbcc`

1. Remove the `tools/agbcc` folder in this repository.
2. Outside of this repository, get a copy of agbcc's code:
   `git clone https://github.com/pret/agbcc.git`
3. In the agbcc repository's folder, run `./build.sh`
4. In the agbcc repository's folder, run `./install.sh <path-to-m2gba-repo>`

## Building Mother 1+2

### Initial setup

1. **Move your unmodified Mother 1+2 ROM into this repository's folder,
   and name it `baserom.gba`.** This repository relies on certain parts
   of the vanilla ROM to make up for assets that haven't been fully
   isolated or dumped yet.
2. If you want to rebuild the tools, go into each of the `tools`
   subdirectories and run `make clean` to delete the EXEs there. You may
   need to do this if you're on Windows and you switch between, say,
   MSys2 and Cygwin and WSL.

### Build

Run `make`. All relevant tools should be built, and all code should be
compiled and assembled and linked into a .elf. This .elf will then be
converted into a ROM, and some scripts will run to verify that the newly
built ROM has the expected hash.

You can also use the `-jN` argument to `make` to do a multithreaded
build with `N` processes. It's recommended to set N to the number of
cores of your CPU, at a maximum -- lower if you want to run other
CPU-intensive programs at the same time as the build.

There is currently no "modern" build option supported to switch out
the C compiler for Mother 1+2's code with a newer one.

### Cleanup

`make clean` will clean up direct build products. It will not delete
tool binaries or your base ROM.

Git provides its own cleaning command for more thorough cleanup. You can
do `git clean -fdx tools` to clean up untracked and ignored files in the
`tools` directory and its subdirectories, for example. Run
`git clean --help` for more details about available options.
