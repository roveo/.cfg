export EDITOR=nvim
export VISUAL=nvim

# load secrets from ~/.env
if [ -f ~/.env ]; then; set -a; source ~/.env; set +a; fi
