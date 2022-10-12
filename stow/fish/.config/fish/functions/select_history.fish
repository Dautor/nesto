function select_history
	history | fzf --border=sharp --query=(commandline -b) | read foo
	if [ $foo ]
		commandline $foo
	else
		commandline ''
	end
end
