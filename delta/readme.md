# Solidity proper highlighting

There is some highlighting that comes with the default `delta` and `bat` installations, but it's broken and only
highlights diffs partially. The solution to this is quite simple:

1. Create a folder with syntax definition files:
```zsh
mkdir -p "$(bat --config-dir)/syntaxes"
cd "$(bat --config-dir)/syntaxes"

# Put new '.sublime-syntax' language definition files
# in this folder (or its subdirectories), for example:
git clone git@github.com:davidhq/SublimeEthereum.git
```
2. Now use the following command to parse these files into a binary cache:
`bat cache --build`

3. Finally, use bat --list-languages to check if the new languages are available.
If you ever want to go back to the default settings, call:
`bat cache --clear`
