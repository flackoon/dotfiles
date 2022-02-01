require 'rake'

desc "Install brew packages"
task :homebrew do
  formulas = %w(
    git
    midnight-commander
    tmux
    tree
    vim
    wget
    zsh
    node
    rbenv  
  )
  exec "brew", "install", *formulas
end
