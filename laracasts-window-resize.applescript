#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Laracasts Screencast Window Size
# @raycast.mode silent
# @raycast.packageName Laracasts Raycast Scripts

# Optional parameters:
# @raycast.icon 🤖
# @raycast.needsConfirmation false

# Documentation:
# @raycast.description Resize the currently active window to the correct dimensions and position for a Laracasts screencast recording.
# @raycast.author Jeffrey Way
# @raycast.authorURL https://laracasts.com

tell application "System Events"
    set frontApp to name of first application process whose frontmost is true
end tell

set screenWidth to 1280
set screenHeight to 720

set gutter to 20
set bottomGutter to 45

tell application frontApp to activate
tell application "System Events" to tell application process frontApp
    try
        set position of window 1 to {gutter, gutter}
        set size of window 1 to {screenWidth - (gutter * 2), screenHeight - (gutter + bottomGutter)}
    on error err
        log err
        -- no window open
    end try
end tell




