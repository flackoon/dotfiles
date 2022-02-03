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
    tmuxinator
    tree
    vim
    fzf
    ack
    wget
    zsh
    node
    rbenv 
    ripgrep 
  )
  exec "brew", "install", *formulas
end
