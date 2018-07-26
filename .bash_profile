# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PYTHONPATH

# added by Anaconda3 5.0.1 installer
export PATH="/Users/David/anaconda3/bin:$PATH"

# added by Anaconda3 installer
export PATH="/Users/David/anaconda3/bin:$PATH"
