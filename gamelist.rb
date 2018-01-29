# Get parameters 
filetype = ARGV[1];
directory = ARGV[2];

# Scan set directory
files = Dir.new("/Users/sg0222254/Desktop/test roms");
# Empty gamelist to start
gamelist = ''

# Loop through each file in Dir
files.each do | game |

	# Remove file extension
	filename = game.gsub('.txt', '')

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
	
end

# Out put new xml file
File.write('gamelist.xml', gamelist)

