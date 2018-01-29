<?php
// Get parameters 
$filetype = $argv[1];
$directory = $argv[2];
$output = $argv[3];

// Scan set directory
$files = scandir($directory);
// Empty gamelist to start
$gamelist = '';
foreach($files as $game){ 

	// Remove file extension
	$filename = str_replace($filetype, '', $game);

	// Remove all meta contained in ()
	$game_title = preg_replace('/\([^)]+\)/', '', $filename);

	// Generate XML for each element
	$gamelist_item = "<game>
						<path>./" . $game . "</path>
						<name>" . $game_title . "</name>
						<image>./boxart/" . $filename . ".png</image>
					</game> \n";

	// Add xml string to main output
	$gamelist .= $gamelist_item;

	// Print feedback to terminal
	print($filename . "\n");
}

// Output success message
print("DONE!");
// Write contents to xml file
file_put_contents($output . 'gamelist.xml', $gamelist);
?>


