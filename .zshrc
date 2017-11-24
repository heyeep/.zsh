source ~/.zsh/bindkeys.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/colors.zsh
source ~/.zsh/setopts.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/history.zsh

if [[ $IS_MAC -eq 1 ]]; then
    # Assume Linux handles gpg on its own well enough.
    source ~/.zsh/gpg.zsh
fi

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/hiep/Programming/cocos2d-x/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Users/hiep/Programming
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/hiep/Programming/cocos2d-x/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH
export PATH="/usr/local/opt/gpg-agent/bin:$PATH"
export PATH="/usr/local/opt/gpg-agent/bin:$PATH"
