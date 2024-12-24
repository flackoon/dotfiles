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
    MonitorControl
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
    nvm
    rbenv
    ripgrep
    iterm2
    ctags
    stats
    zsh-syntax-highlighting
    zsh-autosuggestions
    git-lfs
    jordanbaird-ice
  ]
  exec 'brew', 'install', *formulas
end
