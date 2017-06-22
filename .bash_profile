# Path additions


# Add dict library to second-to-front of path
export PATH="/usr/local/sbin:$PATH"

# Add sqlite3 to front of path
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Add Etcher CLI to back of path
export PATH="$PATH:/opt/etcher-cli"


# Mozilla build tools


# Export mozilla build tools directory to custom folder
export MOZBUILD_STATE_PATH="/Users/NotAlexNoyle/Downloads/Code/Mozille/.mozbuild"

# Set python version for pyenv in compliance with Mozilla's bootstrap.py
export PYENV_VERSION=2.7.11

# Make Rust compiler visible to Firefox build scripts
source /Users/NotAlexNoyle/.cargo/env


# cd shortcuts


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


# Bash aliases


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
