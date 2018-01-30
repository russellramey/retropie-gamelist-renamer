# Retropie Simple Gamelist
- A simple script to clean rom filenames and generate a basic gamelist.xml
- *Supported languages*: PHP, Python, Ruby

This script will scan a directory of emulator roms, remove region labels and clean the display filename. Then it will create a gamelist with path to file, display file name, and path to boxart. In retropie, you can then upload your roms and boxart to the appropriate emulator directory, then upload the generated gamelist.xml file to the appropriate emulator config directory.

## How to use
1. Download or clone the repo somewhere on your local machine.
2. Use terminal or cmb prompt to enter the repo.
```
	cd /path/to/retropit-gamelist-renamer
```
3. Choose your language for the script and run with at least 2 parameters.
```
	python gamelist.py .zip /path/to/directory/of/roms
```
*Parameter Options*:
- filetype, the file type of the roms you are looking for
- direcotry, location of the roms you want to scan
- output (optional), locaiton of where you want to save the gamelist.xml file
