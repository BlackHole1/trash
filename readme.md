# Trash

> The secondary development based on [ali-rantakari/trash](https://github.com/ali-rantakari/trash) on this project

##  Change Content

1. Do not report an error when the path does not exist
2. Without parameters, nothing is output
3. `I386` and `x86_64` are no longer supported
4. Delete `Finder.sdef` and `trash.pod` file
5. Add the `-h` parameter

## Introduction

This is a small command-line program for OS X that moves files or folders to the trash.

See [ali-rantakari][post] for more info on some initial implementation details and design decisions.

[post]: http://hasseg.org/blog/post/406/trash-files-from-the-os-x-command-line/

## Installing

Via [Homebrew]:

    brew tap BlackHole1/homebrew-repo
    brew install trash


Manually:

    $ make
    $ cp trash /usr/local/bin/
    $ make docs
    $ cp trash.1 /usr/local/share/man/man1/


[Homebrew]: http://brew.sh


## The “put back” feature

By default, `trash` uses the low-level system API to move the specified files/folders to the trash. If you want `trash` to ask Finder to perform the trashing (e.g. to ensure that the _"put back"_ feature works), supply the `-F` argument.



## The MIT License

Copyright (c) Ali Rantakari

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
