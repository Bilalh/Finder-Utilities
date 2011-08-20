#!/usr/bin/env osascript


on run argv
	
	set thePath to item 1 of argv as string
	
	set file_alias to the POSIX file thePath as alias
	
	tell application "Finder"
		if extension hidden of file_alias is false then 
			set extension hidden of file_alias to true 
		end if 
	end tell
	
end run