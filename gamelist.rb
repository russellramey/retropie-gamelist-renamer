# Get parameters 
filetype = ARGV[0]
directory = ARGV[1]
output = ARGV[2]

# if now output directory
unless ARGV[2]
	output = ""
end

# Scan set directory
files = Dir.new(directory);
# Empty gamelist to start
gamelist = ''

# Loop through each file in Dir
files.each do | game |

	# Remove file extension
	filename = game.gsub(filetype, '')

	# Remove all meta contained in ()
	game_title = filename.gsub('/\([^)]+\)/', '');

	# Generate XML for each element
	gamelist_item = "<game>
						<path>./" + game + "</path>
						<name>" + game_title + "</name>
						<image>./boxart/" + filename + ".png</image>
					</game> \n";

	# Add xml string to main output
	gamelist += gamelist_item

	# Give feedback to terminal
	print filename + "\n"
	
end

# Print success message
print 'DONE!' + "\n"

# Out put new xml file
File.write(output + 'gamelist.xml', gamelist)

