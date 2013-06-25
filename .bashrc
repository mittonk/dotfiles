export PYTHONPATH=$PYTHONPATH:~/bin/py

alias tail_apperror_dev="tail -f logs/apperror.log | tools/pretty_error_log"
alias ssh='ssh -A'

export SELENIUM_HOST='sff7u7-38.706.yelpcorp.com'

# __git_ps1_yelp ()
# {
#     local g="$(git rev-parse --git-dir 2>/dev/null)";
#     if [ -n "$g" ]; then
#         local r;
#         local b;
#         if [ -d "$g/../.dotest" ]; then
#             r="|AM/REBASE";
#             b="$(git symbolic-ref HEAD 2>/dev/null)";
#         else
#             if [ -f "$g/.dotest-merge/interactive" ]; then
#                 r="|REBASE-i";
#                 b="$(cat $g/.dotest-merge/head-name)";
#             else
#                 if [ -d "$g/.dotest-merge" ]; then
#                     r="|REBASE-m";
#                     b="$(cat $g/.dotest-merge/head-name)";
#                 else
#                     if [ -f "$g/MERGE_HEAD" ]; then
#                         r="|MERGING";
#                         b="$(git symbolic-ref HEAD 2>/dev/null)";
#                     else
#                         if [ -f $g/BISECT_LOG ]; then
#                             r="|BISECTING";
#                         fi;
#                         if ! b="$(git symbolic-ref HEAD 2>/dev/null)"; then
#                             b="$(cut -c1-7 $g/HEAD)...";
#                         fi;
#                     fi;
#                 fi;
#             fi;
#         fi;
#         if [ -n "$1" ]; then
#             printf "$1" "${b##refs/heads/}$r";
#         else
#             printf " (%s)" "${b##refs/heads/}$r";
#         fi;
#     fi
# }

if [ "$YELP_IN_SANDBOX" ]; then
    if [[ "$YELP_SANDBOX_ROOT" =~ /dev/shm/* ]]
    then
        export PS1="\[\e[1;34m\]\u\[\e[0;39m\]@\[\e[1;32m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\] \[\e[01;31m\][FASTSANDBOX $(du -shx /dev/shm/$USER/ | cut -f1)]$(__git_ps1_yelp " \[\e[1;36m\](%s)\[\e[0;39m\] ")\$ \[\e[0m\]"
    else
        export PS1="\[\e[1;34m\]\u\[\e[0;39m\]@\[\e[1;32m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\] \[\e[01;31m\][SANDBOX]$(__git_ps1_yelp " \[\e[1;36m\](%s)\[\e[0;39m\] ")\$ \[\e[0m\]"
    fi
fi

