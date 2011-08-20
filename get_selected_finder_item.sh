a=$( /usr/bin/osascript <<APPLESCRIPT
tell application "Finder"
	set selectedItem to (POSIX path of (the selection as alias))
end tell
APPLESCRIPT
)
echo "$a"