if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings insert
end

eval (/opt/homebrew/bin/brew shellenv)

# Created by `pipx` on 2023-07-25 13:17:24
set PATH $PATH /Users/cjung/.local/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/cjung/miniconda3/bin/conda
    eval /Users/cjung/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
set -gx ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -gx ANDROID_HOME $HOME/Library/Android/sdk

fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
set -Ua fish_user_paths $HOME/.cargo/bin
