# --------------------------
# Plugin manager
# --------------------------
source <(curl -sL https://git.io/zi-loader); zzinit
source ~/.zi/bin/zi.zsh

# --------------------------
# Loading split files
# --------------------------
ZSHHOME="${HOME}/.zsh"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi
