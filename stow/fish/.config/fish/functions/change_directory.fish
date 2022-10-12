
function change_directory
	begin
		/usr/bin/find . -maxdepth 1 -type d | sed 's|^./||g' | grep -v '^\.$'
	end | /usr/bin/awk '!a[$0]++' | /usr/bin/fzf       --border=sharp --query=(commandline -b) | /usr/bin/perl       -pe 's/([ ()])/\\\\$1/g' | read foo
	if [ $foo ]
		builtin cd "$foo"
		commandline -f repaint
	end
end
