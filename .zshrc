source ~/zshrc/init.sh

for FILE in ~/zshrc/*.sh; do
  if [[ "$(basename "$FILE")" != "init.sh" ]]; then
    source "$FILE"
  fi
done
