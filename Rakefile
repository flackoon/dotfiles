require 'rake'

desc "Install brew packages"
task :homebrew do
  formulas = %w(
    git
    scmpuff
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
    node
    rbenv 
    ripgrep
    iterm2
  )
  exec "brew", "install", *formulas
end
