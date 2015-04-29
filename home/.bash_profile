# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Stop tar from include Resource Forks
export COPYFILE_DISABLE=true

export DYLD_LIBRARY_PATH=/opt/oracle/instantclient_11_2
export NLS_LANG=GERMAN_GERMANY.WE8ISO8859P9

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

for file in ~/.{myextra,myextra2}; do
	[ -r "$file" ] && source "$file"
done
unset file

##
# Your previous /Users/bonis/.bash_profile file was backed up as /Users/bonis/.bash_profile.macports-saved_2012-07-26_at_15:58:30
##

# MacPorts Installer addition on 2012-07-26_at_15:58:30: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

PATH=/usr/local/bin:/usr/local/sbin:/opt/iOSOpenDev/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/Users/bonis/.gem/ruby/1.8/bin:/Users/bonis/bin:/Users/bonis/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Library/OpenSC/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/bin::/Library/Frameworks/Python.framework/Versions/Current/bin
PATH=/usr/local/opt/ruby193/bin:/usr/local/bin:/usr/local/sbin:/opt/iOSOpenDev/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/Users/bonis/.gem/ruby/1.8/bin:/Users/bonis/bin:/Users/bonis/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Library/OpenSC/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/bin::/Library/Frameworks/Python.framework/Versions/Current/bin
PATH=/usr/local/bin:/usr/local/sbin:/opt/iOSOpenDev/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/Users/bonis/.gem/ruby/1.8/bin:/Users/bonis/bin:/Users/bonis/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Library/OpenSC/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/bin::/Library/Frameworks/Python.framework/Versions/Current/bin
export MSF_DATABASE_CONFIG=/usr/local/share/metasploit-framework/database.yml
