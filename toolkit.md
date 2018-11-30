# Useful tools

## Python
- **pdb** is a useful python cli debugger
- **F5** to compile
- use `#!/usr/bin/env *program*` to leave it to user's program
- **uncompyle2** is a tool to decompile `.pyc` binaries

### Python modules
- `struct` module to handle endian-ness
- `logging` module instead of `print`
- `argparse`, `os`, `re` great core modules
- `glob` - to find files with regex
- `request` library for web
- `pprint` formatted printing
- `pickle` pickle.load and pickle.dump for reading/writing python dicts
- `getpass` handles password input

## web
- modify cookies
- **curl** and **wget** are powerful
- 'admin' is a common database user
- SQL injection
    - ' OR 1=1 --
- XSS vectors

## stegonography
- `zsteg`
- **exiftool** - read metadata

## forensics
- foremost - Recover files using their headers, footers, and data structures

## Crypto
- mono-alphabetic substitution cipher
    - **caesar, rot13** mono-alphabetic substitution cipher
    - quipquip website for substitution cipher
- poly-alphabetic substitution cipher
    - **vignere** interwoven caesar cipher with key "FLAGFLAGFLAG"
- frequency attack
    - ETAOIN SHRDLU :approximate order of frequency of the 12 most commonly used letters in english

## Bash
- `<<` is known as a _here-document_ structure, letting the program know what will be the ending text. ie `EOF`
- `<<<` is a _here-string_. Inputs a pre-made string of text to a program
- regex `picoCTF{.*}`
- 'unshadow' to crack login credentials if you have /etc/passwd and /etc/shadow

## read binary
- `file prog` - determine type
- `strings prog` is powerful!
- `hexdump -C` for Canonical per-byte (LOW to HIGH)
- `xxd` prints (LOW to HIGH) and groups by (2bytes). Big Endian. Right ASCII intrepretation matches byte-to-byte
- `objdump -Mintel -D ./prog`
- `readelf -h ./prog` - display information about ELF files
- `r2 ./prog' - reverse engineering tool

## buffer overflow
- `gets` is vulnerable. written in manpage

## Vim
- `:set list` see trailing characters

## Others
- connect python and googlesheets with twilio [here](https://www.youtube.com/watch?v=vISRn5qFrkM)
