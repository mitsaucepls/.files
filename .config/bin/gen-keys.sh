#!/usr/bin/env bash
set -euo pipefail

SSH_KEY_PATH="$HOME/.ssh/id_ed25519"

read -rp "Your full name: " NAME
read -rp "Your email address: " EMAIL

read -rsp "Enter GPG passphrase (leave blank for no passphrase): " GPG_PASSPHRASE
echo

GPG_BATCH_FILE="$(mktemp)"
{
  echo "Key-Type: RSA"
  echo "Key-Length: 4096"
  echo "Subkey-Type: RSA"
  echo "Subkey-Length: 4096"
  echo "Name-Real: $NAME"
  echo "Name-Email: $EMAIL"
  echo "Expire-Date: 0"
  if [[ -z "$GPG_PASSPHRASE" ]]; then
    echo "%no-protection"
  else
    echo "Passphrase: $GPG_PASSPHRASE"
  fi
  echo "%commit"
} > "$GPG_BATCH_FILE"

echo "Generating GPG key…"
gpg --batch --generate-key "$GPG_BATCH_FILE"

FPR=$(gpg --with-colons --list-keys "$EMAIL" \
     | awk -F: '/^fpr:/ { print $10; exit }')

KEYID=${FPR:24}

echo "GPG public key (paste this into GitLab/GitHub):"
gpg --armor --export "$FPR"

echo "To enable Git commit signing, add these lines to your Git config:"
echo "  git config --global user.signingkey $KEYID"
echo "  git config --global commit.gpgsign true"
echo

read -rsp "Enter SSH key passphrase (leave blank for no passphrase): " SSH_PASSPHRASE
echo

if [[ -f "$SSH_KEY_PATH" ]]; then
  echo "Warning: SSH key $SSH_KEY_PATH already exists—skipping generation."
else
  echo "Generating SSH Ed25519 key at $SSH_KEY_PATH…"
  ssh-keygen -t ed25519 -a 100 -C "$EMAIL" -f "$SSH_KEY_PATH" -N "$SSH_PASSPHRASE"
fi

echo
echo "SSH public key (paste this into GitLab/GitHub):"
cat "${SSH_KEY_PATH}.pub"
echo

rm -f "$GPG_BATCH_FILE"
