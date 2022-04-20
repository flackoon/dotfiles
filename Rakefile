require 'rake'

desc 'Install brew packages'
task :homebrew do
  formulas = %w[
    git
    scmpuff
    git-delta
    less
    tig
    jump
    gnupg
    midnight-commander
    tmux
    tree
    vim
    fzf
    ack
    wget
    zsh
    go
    cmake
    python
    node
    rbenv
    ripgrep
    iterm2
    ctags
  ]
  exec 'brew', 'install', *formulas
end
