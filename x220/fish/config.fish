set fish_greeting
if status --is-login
	exec startx
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function sudo
	if test "$argv" = !!
	eval command sudo $history[1]
else
	command sudo $argv
	end
end
