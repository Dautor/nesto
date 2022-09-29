function files
	fzf --preview 'bat --color=always --style=numbers --line-range=:53 {}' | read foo
	if [ $foo ]
		commandline $foo
	else
		commandline ''
	end
end
