# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
        # Shell is non-interactive.  Be done now!
        return
fi


# Put your fun stuff here.

#Pimp My Prompt
export PS1="\[\e[00;36m\][\[\e[0m\]\[\e[00;33m\]\u\[\e[0m\]\[\e[00;36m\]@\[\e[0m\]\[\e[00;32m\]\h\[\e[0m\]\[\e[00;36m\]]\[\e[0m\]\[\e[00;33m\]\w\[\e[0m\]\[\e[00;32m\]\\$\[\e[0m\]"

# Aliases
 ## indpeth ls
alias ll='ls -lah'
 ## Yes make the folder
alias mkdir='mkdir -pv'
 ## Info on port status
alias ports='netstat -tulanp'
 ## pass options to free ## 
alias meminfo='free -m -l -t'
 ## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 ## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
