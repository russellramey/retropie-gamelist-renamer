# Get parameters 
filetype = ARGV[1];
directory = ARGV[2];

# Scan set directory
files = Dir.entries(directory);
# Empty gamelist to start
gamelist = ''
files.each do | game |

	# Remove file extension
	

	# Remove all meta contained in ()
	

	# Generate XML for each element
	

	# Add xml string to main output
	
	
end

# Out put new xml file
File.write('gamelist.xml', gamelist)

