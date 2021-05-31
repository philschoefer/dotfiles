cp ~/dotfiles/.gitconfig ~/
cp ~/dotfiles/.zshrc ~/
cp ~/dotfiles/.shopify_config ~/.shopify_config

# Only run nested steps in Spin workspaces.
if [[ "$SPIN" = 1 ]]
then
  # Only run nested steps in Spin + shopify/shopify workspaces.
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/shopify" ]]
  then
    cartridge insert philschoefer/some-orders-and-products
    . /cartridges/some-orders-and-products/setup.sh
  fi
fi