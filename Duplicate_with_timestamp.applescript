on run
	set AppleScript's text item delimiters to ""
	tell application "Finder"
		set file_list to the selection
		repeat with f in file_list
			set dup to duplicate f
			
			set n to the name of f
			set ext to the name extension of f
			
			if ext is not "" then
				set ext to "." & ext
				set AppleScript's text item delimiters to ext
				set new_name to (text items 1 thru ((the count of (every text item of n)) - 1) of n) as text
			else
				set new_name to n
			end if
			
			set AppleScript's text item delimiters to ""
			set new_name to new_name & " " & (format_date(the current date) of me) & ext
			
			set the name of dup to new_name
		end repeat
	end tell
end run

on format_date(x)
	set old_delims to AppleScript's text item delimiters
	set AppleScript's text item delimiters to ""
	
	set the_result to Â
		(the year of x & "-" & Â
			double_digit(the month of x as number) & "-" & Â
			double_digit(the day of x) & " " & Â
			double_digit(the hours of x) & "." & Â
			double_digit(the minutes of x) & "." & Â
			double_digit(the seconds of x) Â
				) as text
	
	set AppleScript's text item delimiters to old_delims
	return the_result
end format_date

on double_digit(x)
	if x < 10 then return "0" & (x as text)
	return x as text
end double_digit