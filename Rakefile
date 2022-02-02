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
    wget
    zsh
    node
    rbenv  
  )
  exec "brew", "install", *formulas
end
