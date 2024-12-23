## Apps

- Virtualization - [UTM](https://mac.getutm.app/)
- Power Management - [AlDente](https://apphousekitchen.com/)
- Keyboard Remapping - [Karabiner-Elements](https://karabiner-elements.pqrs.org/)
- Mouse Configurator - [LogiOptions](https://www.logitech.com/en-eu/software/logi-options-plus.html)
- Notetaking - [Obsidian](https://obsidian.md/)
- Spotlight - [Raycast](https://www.raycast.com/) 
- Window Management - [Slate](https://github.com/jigish/slate)
- Calendar - [Fantastical](https://flexibits.com/fantastical)
- Misc - [Pictogram](https://pictogramapp.com/)

## Adding GPG signing keys for GitHub

1. Generate a key - `gpg --full-generate-key`
  - Select RSA
  - Enter size **4096** bits at least for size
  - Enter length of time
  - Enter your commit **name** and **email** (pay attention to the email)
  - Enter passphrase
2. List your GPG keys - `gpg --list-secret-keys --keyid-format=long`
3. Copy the ID - **sec 4096R/{THIS_PART} 2022-22-22 [expires: 2024-22-22].**
4. Copy the GPG key - `gpg --armor --export {GPG_KEY_ID} | pbcopy`
5. Add it to Github
6. Make sure you have the following settings in place (you can set these with the --global flag too ofc):
  - `git config user.signingkey {GPG_KEY_ID}`
  - `git config commit.gpgsign true`
  - `git config gpg.program gpg`
