. $HOME/bin/dotfiles/bash/env
. $HOME/bin/dotfiles/bash/config
. $HOME/bin/dotfiles/bash/aliases

# Completion Scripts
complete -C $HOME/bin/dotfiles/bash/completion_scripts/rake_completion -o default rake
complete -C $HOME/bin/dotfiles/bash/project_completion -o default c