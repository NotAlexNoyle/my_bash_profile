# Add sqlite3 to front of path
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Add Etcher CLI to back of path
export PATH="$PATH:/opt/etcher-cli"


# Set python version for pyenv for the purpose of messing with the Firefox source code
export PYENV_VERSION=2.7.11


# Misc. programming working directory
export code=/Users/NotAlexNoyle/Downloads/Code
export CODE=/Users/NotAlexNoyle/Downloads/Code

# Normal macOS downloads folder /User/$YOU/Downloads
export downloads=/Users/NotAlexNoyle/Downloads
export DOWNLOADS=/Users/NotAlexNoyle/Downloads

# theos iOS Jailbreak SDK from https://github.com/theos/theos
export theos=/Users/NotAlexNoyle/Downloads/IOS/theos
export THEOS=/Users/NotAlexNoyle/Downloads/IOS/theos

# Development directory for jailbreak tweaks
export tweaks=/Users/NotAlexNoyle/Downloads/Code/JailbreakTweaks
export TWEAKS=/Users/NotAlexNoyle/Downloads/Code/JailbreakTweaks


# Copy directory and all subdirectories
alias cpdir='cp -R '
alias CPDIR='cp -R '

# iOS deviceconsole executer, binary from https://github.com/rpetrich/deviceconsole
alias deviceconsole='cd /Users/NotAlexNoyle/Downloads/IOS/deviceconsole/ && ./deviceconsole ; cd ~-'
alias DEVICECONSOLE='cd /Users/NotAlexNoyle/Downloads/IOS/deviceconsole/ && ./deviceconsole ; cd ~-'

# iplist main executer from https://github.com/NotAlexNoyle/iplist
alias ip='~/Downloads/Code/Bash/iplist/iplist.sh'
alias IP='~/Downloads/Code/Bash/iplist/iplist.sh'

# iplist clean executer from https://github.com/NotAlexNoyle/iplist
alias ipclean='~/Downloads/Code/Bash/iplist/clean.sh'
alias IPCLEAN='~/Downloads/Code/Bash/iplist/clean.sh'

# Auto perform -a on all ls commands
alias ls='ls -a'
alias LS='ls -a'

# theos iOS Jailbreak SDK new instance executer
alias newtweak='$theos/bin/nic.pl'
alias newtweak='$theos/bin/nic.pl'

# Copy directory and all subdirectories as root
alias sudocpdir='sudo cp -R '
alias SUDOCPDIR='sudp cp -R '

# Open file in textedit (specify file after alias)
alias textedit='open -e '
alias TEXTEDIT='open -e '

# Empty trash quickly --> NOT RECOVERABLE
alias trash='rm -rf ~/.Trash/*'
alias TRASH='rm -rf ~/.Trash/*'
