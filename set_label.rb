#!/usr/bin/env ruby
SCPT="$HOME/bin/setLabelByNumber"

if ARGV.length != 2 then	
	puts "setLabel <colour> <filepath>"
	puts "Where <colour> is none, orange, red, yellow, blue, purple, green or grey"
	exit
end

colours = {
	"none"   => 0, 
	"orange" => 1, 
	"red"    => 2, 
	"yellow" => 3, 
	"blue"   => 4, 
	"purple" => 5, 
	"green"  => 6, 
	"grey"   => 7
}

colour_index, path = colours[ARGV[0]], ARGV[1]

(puts "Invalid colour"; exit) unless colour_index
(puts "Invalid path"; exit)   unless File.exist? path

`#{SCPT} #{colour_index} "#{path}"`