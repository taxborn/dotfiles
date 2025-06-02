set -x EDITOR nvim
if status is-interactive
    bind 'ctrl-o' 'y'
    alias up="ssh -t neon 'cd /var/www/taxborn.com && ./update.sh'"
    # Commands to run in interactive sessions can go here
    SHELL=fish keychain --eval --quiet 9BC40CD3E8BA5EF2 id_ed25519 | source
end
