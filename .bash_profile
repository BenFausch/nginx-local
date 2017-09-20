
# export PATH=/Applications/MAMP/bin/php/php5.6.25/bin:$PATH
# export PATH=/Applications/MAMP/Library/bin:$PATH
# Homebrew PHP CLI
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
PHP_AUTOCONF="/usr/local/bin/autoconf"

#lists ll as list all
alias ll='ls -a'

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#terminal colors
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
function set_prompt {
	local         BLUE="\[\033[0;34m\]"
	local          RED="\[\033[0;31m\]"
	local    LIGHT_RED="\[\033[1;31m\]"
	local        GREEN="\[\033[0;32m\]"
	local  LIGHT_GREEN="\[\033[1;32m\]"
	local        WHITE="\[\033[1;37m\]"
	local   LIGHT_GRAY="\[\033[1;37m\]"
	local         CYAN="\[\033[0;36m\]"
	local   LIGHT_CYAN="\[\033[1;36m\]"
	local       PURPLE="\[\033[0;35m\]"
	local LIGHT_PURPLE="\[\033[0;35m\]"

	export PS1="$LIGHT_GRAY\\n\n$GRAY[\W]$CYAN\$(parse_git_branch)$LIGHT_GREEN\$ "
}
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
set_prompt




##Launch Chrome with given URL from commandline
alias url="open -a /Applications/Google\ Chrome.app"
alias jekyllbuild='open -a /Applications/Google\ Chrome.app http://localhost:4000 && bundle exec jekyll serve'
alias jekyll='bundle exec jekyll serve'

alias vhost='sublime /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf'

alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'

### SERVER SERVICES ALIAS
#conf
alias phplog='sublime /usr/local/etc/nginx/logs/error.log'
alias nginx-conf='cd /usr/local/etc/nginx'
alias sql-conf='cd /usr/local/var/mysql/'

# Nginx
alias nginx.start='sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'

# PHP-FPM
alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
alias php-fpm.restart='php-fpm.stop && php-fpm.start'

# MySQL
alias mysql.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.restart='mysql.stop && mysql.start'

