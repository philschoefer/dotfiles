cp ~/dotfiles/.gitconfig ~/
cp ~/dotfiles/.zshrc ~/
cp ~/dotfiles/.bash_profile ~/

if [[ "$SPIN" = 1 ]]
then
  # Only run nested steps in Spin + shopify/shopify workspaces.
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/shopify" ]]
  then
    cd "$SPIN_REPO_SOURCE_PATH"
    cartridge insert shameelabd/shopify-reportify-config
    . /cartridges/shopify-reportify-config/setup.sh
    restart
  fi
fi
