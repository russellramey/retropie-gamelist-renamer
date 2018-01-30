# libs 
import sys, os, re

# Get parameters
filetype = sys.argv[1]
directory = sys.argv[2]
output = sys.argv[3]

# Empty gamelist to start
gamelist = ''

# Scan set directory
files = os.listdir(directory);

for game in files:

	# Remove file extension
	filename = game.replace(filetype, '')

	# Remove all meta contained in ()
	game_title = re.sub("\((.*?)\)", '', filename)

	# Generate XML for each element
	gamelist_item = "<game> \n \
						<path>./" + game + "</path> \n \
						<name>" + game_title + "</name> \n \
						<image>./boxart/" + filename + ".png</image> \n \
					</game> \n";


	# Add xml string to main output
	gamelist += gamelist_item

	# Give feedback to terminal
	print filename + "\n"

# Print success message
print 'DONE!' + "\n"

# Create new file, write to it, and close
file = open(output + 'gamelist.xml', 'w')
file.write(gamelist)
file.close()