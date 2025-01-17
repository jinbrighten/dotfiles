if status is-interactive
    # Commands to run in interactive sessions can go here
end

export PATH="$PATH:$HOME/.local/bin"

set PATH $HOME/anaconda3/bin $PATH
set fish_greeting

# abbreviations
abbr	l	"eza -l -s type"
abbr	sfish	"source ~/.config/fish/config.fish"
abbr	vfish	"vim ~/.config/fish/config.fish"
abbr	vi3	    "vim ~/.config/i3/config"
abbr    sai     "sudo apt install"

# fzf
fzf_key_bindings

# zoxide
zoxide init fish | source


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/jinmyeongkim/anaconda3/bin/conda
    eval /home/jinmyeongkim/anaconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/jinmyeongkim/anaconda3/etc/fish/conf.d/conda.fish"
        . "/home/jinmyeongkim/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/jinmyeongkim/anaconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

