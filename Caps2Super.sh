#This little thing is for my Cherry g84 keyboard, which does not have a windows or "Super" key. So, that useless hunk of plastic labelled Caps Lock can stand in. This should work with any x11 based system. 

setxkbmap -option caps:super

# These 2 remap capslock for vim (or evil mode) -- and remap super to escape -- tested working on vintage thinkpad t40: 

xmodmap -e "keycode 9 = Super_L"
setxkbmap -option caps:escape
