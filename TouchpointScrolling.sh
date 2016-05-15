# Hold down the middle button and the touchpoint can scroll. Very handy. 
# Enable it with the following commands, which work with many ThinkPads:

# Step 1
# First, figure out what model of trackpoint you have: 
xinput --list | grep TrackPoint

# Step 2:
# In the next command, replace everything in quotes with your particular trackpoint model (obtained via Step 1): 
dev="TPPS/2 IBM TrackPoint"

# Step 3: 
# Enter the scrolling paramaters. Try the ones below for starters:
xinput --set-int-prop "$dev" "Evdev Wheel Emulation Axes" 8 6 7 4 5
xinput --set-int-prop "$dev" "Evdev Wheel Emulation Button" 8 2
xinput --set-int-prop "$dev" "Evdev Wheel Emulation" 8 1

# Step 4 
# Try it out!

# Well, *I'm* hooked. But if you decide it's not your cup of tea, use the following command to turn off the scrolling: 
xinput --set-int-prop "$dev" "Evdev Wheel Emulation" 8 0
