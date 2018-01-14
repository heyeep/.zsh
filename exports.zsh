# Don't create additional files during tar.
export COPYFILE_DISABLE=true

# Disable automatic renaming.
export DISABLE_AUTO_TITLE="true"

# Setup terminal
export TERM=xterm-256color

# This resolves issues install the mysql, postgres
# and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'

# CTAGS Sorting in VIM/Emacs is better behaved with this in place
export LC_COLLATE=C
# https://stackoverflow.com/questions/11287564/getting-sed-error-illegal-byte-sequence-in-bash
#export LC_ALL=C
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export EDITOR=/usr/local/bin/emacs

# PATHS
user_bin=$HOME/.bin
local_bin=/usr/local/bin
sbin=/usr/local/sbin
opt_bin=/opt/local/bin
opt_sbin=/opt/local/sbin

# Add to $PATH variable.
my_paths=$user_bin:$local_bin
system_paths=$opt_bin:$opt_sbin:$sbin

export PATH=$my_paths:$system_paths:$PATH

# if [[ $IS_LINUX -eq 1 ]]; then
    # name_path=$HOME/name/src
    # export PATH=$name_path:$PATH
# fi

if [[ $IS_MAC -eq 1 ]]; then
    # Homebrew Analytics Opt Out
    # https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
    export HOMEBREW_NO_ANALYTICS=1

    export XCODE_BUILD=$HOME/Library/Developer/Xcode/DerivedData

    # makeinfo_bin=/usr/local/Cellar/texinfo/6.3/bin

    llvm_bin=/usr/local/Cellar/llvm/4.0.0_1/bin
    export LIBCLANG_LIBDIR=/usr/local/Cellar/llvm/4.0.0_1/lib

    osx_paths=$llvm_bin
    export PATH=$osx_paths:$PATH
fi
