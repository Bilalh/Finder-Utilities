#!/usr/bin/env osascript


on run argv
	
	set theColourChoice to item 1 of argv as string
	set thePath to item 2 of argv as string
	
	set file_alias to the POSIX file thePath as alias
	
	tell application "Finder"
		set the label index of file_alias to theColourChoice
	end tell
	
	
end run