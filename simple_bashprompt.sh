# Should create a simple bash prompt that just prints the current user
# and the basename of current PWD.

echo 'PS1="\[\033[01;32m\]\u@\W\033[00m:"' >> ~/.bashrc
