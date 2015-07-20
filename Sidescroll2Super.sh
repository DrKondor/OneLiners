#! /usr/bin/bash

# The keyboard on the old school IBM thinkpad T40 is a dream to type on. But it lacks a dedicated windows key (Also known as the super key.)
# This script hijacks the scancode for the side scroll key (top left of the arrow block, keycode 166) and translates to the 'Super' key. 
# I originally wanted the 'Access IBM' button (keycode 156) but for some screwy reason, that key is not mappable on my machine! If anyone out there comes across a way to reliably re-assign the 'Access IBM' button, HIT ME UP! 

# THX! :D

xmodmap -e 'keycode 166=Super_L'
