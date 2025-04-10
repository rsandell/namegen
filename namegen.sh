# ! /bin/sh
cd $(dirname $0)
xdotool keyup "super+n"; # needed to refresh the status of the request.  simulates letting go of the hotkey super+n keys, otherwise it interferes with ctrl-v paste function
./namegen.py | tr -d "\n" | xsel -i -b; # add the name to the clipboard
xdotool key "ctrl+v"; #simulate a ctrl-v
# xdotool keydown "super"; #unpretend the user let go of the super key