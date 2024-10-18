# Usefoul 'Command Lines'

This file contains a list of usefoul commands that could be used to facilitate your publishing with latex.

## File Encoding

To check file encoding under linux, you could run the following command:

```bash
file --mime *.ext
```

Sometime MATLAB (or other editors) produces source files with strange encodings that you convert in order to do not have any encoding error when compiling within your preferred LaTeX environment.

```bash
iconv -t US-ASCII//TRANSLIT file.ext -o file_enc.ext
```