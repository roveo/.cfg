export EDITOR=nvim
export VISUAL=nvim

# load secrets from ~/.env
if [ -e ~/.env ]; then; set -a; source .env; set +a; fi

