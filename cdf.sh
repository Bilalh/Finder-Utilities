# cdf: cd's to frontmost window of Finder
currFolderPath=$( /usr/bin/osascript <<-APPLESCRIPT
tell application "Finder"
try
set currFolder to (folder of the front window as alias)
on error
set currFolder to (path to desktop folder as alias)
end try
POSIX path of currFolder
end tell
APPLESCRIPT
)
# echo "pushd to \"$currFolderPath\""
pushd "$currFolderPath" &> /dev/null
pwd
