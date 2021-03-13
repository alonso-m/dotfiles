alias sway="sway > /home/malonso/sway.log 2>&1"
alias zoomg="XDG_CURRENT_DESKTOP=gnome zoom"
# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway > /home/malonso/sway.log 2>&1
fi
