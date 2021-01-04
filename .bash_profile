# Path additions


# Add homebrew dependencies to path
export PATH="/usr/local/sbin:$PATH"

# Use latest python2 from homebrew when invoking "python"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Add sqlite3 to path
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Add Etcher CLI to back of path
export PATH="$PATH:/opt/etcher-cli"


# Mozilla build tools


# Export mozilla build tools directory to custom folder
export MOZBUILD_STATE_PATH='/Users/NotAlexNoyle/Downloads/Code/Mozilla/.mozbuild'

# Tell mozilla build system where configuration file is
export MOZCONFIG='/Users/NotAlexNoyle/Downloads/Code/Mozilla/src/mozilla-central/mozconfig'

# Set python version for pyenv in compliance with Mozilla's bootstrap.py
# export PYENV_VERSION=2.7.11


# cd shortcuts


# Shortcut to Bash code working directory
export bash='/Users/NotAlexNoyle/Downloads/Code/Bash'
export BASH='/Users/NotAlexNoyle/Downloads/Code/Bash'

# Misc. programming working directory
export code='/Users/NotAlexNoyle/Downloads/Code'
export CODE='/Users/NotAlexNoyle/Downloads/Code'

# Normal macOS downloads folder /User/$YOU/Downloads
export downloads='/Users/NotAlexNoyle/Downloads'
export DOWNLOADS='/Users/NotAlexNoyle/Downloads'

# theos iOS Jailbreak SDK from https://github.com/theos/theos
export theos='/Users/NotAlexNoyle/Downloads/Operating-Systems/Mobile/iOS/theos'
export THEOS='/Users/NotAlexNoyle/Downloads/Operating-Systems/Mobile/iOS/theos'

# Development directory for jailbreak tweaks
export tweaks='/Users/NotAlexNoyle/Downloads/Code/JailbreakTweaks'
export TWEAKS='/Users/NotAlexNoyle/Downloads/Code/JailbreakTweaks'


# Bash aliases


# Upgrade outdated homebrew casks
alias caskupgrade='brew cu -a -y --cleanup'
alias CASKUPGRADE='brew cu -a -y --cleanup'

# Print 'chmod' number
alias chstat='stat -f "%0Lp" '
alias CHSTAT='stat -f "%0Lp" '

# Bind 'cls' to 'clear'
alias cls='clear'
alias CLS='clear'

# Copy directory and all subdirectories
alias cpdir='cp -R '
alias CPDIR='cp -R '

# Execute iOS deviceconsole (binary from https://github.com/rpetrich/deviceconsole)
alias deviceconsole='(cd /Users/NotAlexNoyle/Downloads/Operating-Systems/Mobile/iOS/deviceconsole && ./deviceconsole)'
alias DEVICECONSOLE='(cd /Users/NotAlexNoyle/Downloads/Operating-Systems/Mobile/iOS/deviceconsole && ./deviceconsole)'

# List git files in repo
alias gitls='git ls-tree --full-tree -r HEAD'
alias GITLS='git ls-tree --full-tree -r HEAD'

# iplist main executer from https://github.com/NotAlexNoyle/iplist
alias ip='~/Downloads/Code/Bash/iplist/iplist.sh'
alias IP='~/Downloads/Code/Bash/iplist/iplist.sh'

# iplist clean executer from https://github.com/NotAlexNoyle/iplist
alias ipclean='~/Downloads/Code/Bash/iplist/clean.sh'
alias IPCLEAN='~/Downloads/Code/Bash/iplist/clean.sh'

# counts lines in a document or file
alias lc='wc -l < '
alias LC='wc -l < '

# Auto perform -a on all ls commands
alias ls='ls -a'
alias LS='ls -a'

# theos iOS Jailbreak SDK new instance executer
alias newtweak='/Users/NotAlexNoyle/Downloads/Operating-Systems/Mobile/iOS/theos/bin/nic.pl'
alias NEWTWEAK='/Users/NotAlexNoyle/Downloads/Operating-Systems/Mobile/iOS/theos/bin/nic.pl'

# Open file in notepad.app from Mac App Store
alias notepad='open -a "/Applications/Notepad.app" '
alias NOTEPAD='open -a "/Applications/Notepad.app" '

# Open file in Adobe Photoshop CC (2017)
alias photoshop='open -a "Adobe Photoshop CC 2017" '
alias PHOTOSHOP='open -a "Adobe Photoshop CC 2017" '

# Upgrade all pip packages (requires pip-review)
alias pipupgrade='pip-review --auto --verbose'
alias PIPUPGRADE='pip-review --auto --verbose'

# Generate speedtest results with share link every time
alias speedtest='speedtest --share'
alias SPEEDTEST='speedtest --share'

# Open file in sublime text
alias sublime='open -a "Sublime Text" '
alias SUBLIME='open -a "Sublime Text" '

# Copy directory and all subdirectories as root
alias sudocpdir='sudo cp -R '
alias SUDOCPDIR='sudp cp -R '

# Prints current time in standard format
alias t='echo " " && date "+%r" && echo " "'
alias T='echo " " && date "+%r" && echo " "'

# Open file in textedit (specify file after alias)
alias textedit='open -e '
alias TEXTEDIT='open -e '

# Empty trash quickly --> NOT RECOVERABLE
alias trash='rm -rf ~/.Trash/*'
alias TRASH='rm -rf ~/.Trash/*'

# Cast units to gunits from homebrew
alias units='gunits'
alias UNITS='gunits'


# Bash functions


# Checks if brew cask updates are availible, returns respective messages
caskchk() {

	caskChkCommand="$(brew outdated --cask)"
	if [[ $caskChkCommand ]]; then
	echo
	echo "Outdated:"
	echo
	echo "$caskChkCommand"
	echo
	else
	echo
	echo "Casks are already up-to-date."
	echo
	fi

}
CASKCHK() {

	caskChkCommand="$(brew outdated --cask)"
	if [[ $caskChkCommand ]]; then
	echo
	echo "Outdated:"
	echo
	echo "$caskChkCommand"
	echo
	else
	echo
	echo "Casks are already up-to-date."
	echo
	fi

}

# Creates a remote repository on github.com (using whiteinge/ok.sh)
gitinit() {

	if [[ $# < 2 ]] ; then
		echo "Please specify the username and title of the repo you wish to create. Example: "gitinit USERNAME TITLE""
	elif [[ $# > 2 ]] ; then	
		echo "Too many arguments. Please specify only the username and title of the repo you wish to create. Example: "gitinit USERNAME TITLE" Titles with more than one word should be separated by dashes, not by spaces or other special characters."
	else
		cd /Users/NotAlexNoyle/Downloads/Code/Bash/ok.sh
		./ok.sh create_repo $1  2> ~/.create_repo_output > /dev/null
		
		repoOutput=$(cat ~/.create_repo_output)

		if [[ $repoOutput == Client* ]] || [[ $repoOutput == Server* ]] ; then
			echo
			cat ~/.create_repo_output
			echo
			echo "Repository Not Created."
			echo
		else
			echo
			echo "Repository \"https://github.com/NotAlexNoyle/$1\" successfully created."
			echo
		fi

		rm -rf ~/.create_repo_output
		cd - > /dev/null
	fi

}
GITINIT() {
	
	if [[ $# < 1 ]] ; then
		echo "Please specify the name of the repo you wish to create."
	elif [[ $# > 1 ]] ; then
		echo "Too many arguments. Please specify ONLY the name of the repo you wish to create. Repository titles with more than one word should be separated by dashes, not by spaces or other special characters."
	else
		cd /Users/NotAlexNoyle/Downloads/Code/Bash/ok.sh
		./ok.sh create_repo $1 2> ~/.create_repo_output > /dev/null

		repoOutput=$(cat ~/.create_repo_output)

		if [[ $repoOutput == Client* ]] || [[ $repoOutput == Server* ]] ; then
			echo
			cat ~/.create_repo_output
			echo
			echo "Repository Not Created"
			echo
		else
			echo
			echo "Repository \"https://github.com/NotAlexNoyle/$1\" successfully created."
			echo
		fi

		rm -rf ~/.create_repo_output
		cd - > /dev/null
	fi

}

# Removes a remote repository from github.com (using whiteinge/ok.sh)
gitrm() {

	if [[ $# < 2 ]] ; then
		echo "Please specify the name of the repo you want to delete. Example: 'gitrm USERNAME REPONAME'"
	elif [[ $# > 2 ]] ; then
		echo "Too many arguments. Please specify ONLY the name of the repo you want to delete. Example: 'gitrm USERNAME REPONAME'"
	else
		cd /Users/NotAlexNoyle/Downloads/Code/Bash/ok.sh
		yes | ./ok.sh delete_repo $1 2> ~/.delete_repo_output > /dev/null

		repoOutput=$(cat ~/.delete_repo_output)

		if [[ $repoOutput != null  ]] ; then
			echo "Errors found: "
			cat ~/.repoOutput
		else
			echo "Output was null"
		fi

		rm -rf ~/.delete_repo_output
		cd - > /dev/null
	fi

}

# Searches the current directory, with the option to pass in a different directory to search instead
search() {

	echo "TODO"

}
