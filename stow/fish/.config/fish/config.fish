export EDITOR=nano
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANWIDTH=tty

set -e SSH_AGENT_PID
export SSH_AUTH_SOCK=(gpgconf --list-dirs agent-ssh-socket)

if status --is-interactive
	source ~/.config/fish/fish_command_timer.fish
	bind --user -s \cx "commandline (history | head -n 1); commandline -f execute"
	bind \cr select_history
	bind \cf change_directory
	bind \cs files
	bind \cg expand-abbr
	set fish_user_paths ~/bin ~/.emacs.d/bin
	function fish_title
		set -q argv[1]; or set argv fish
		echo (fish_prompt_pwd_dir_length=1 prompt_pwd): $argv;
	end
end

source /opt/asdf-vm/asdf.fish
