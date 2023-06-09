

if [ $# -eq 0 ]
then
    if [ ! -f $1 ]
    then
        PARAM="./$1"
    else
        PARAM="./$1.*"
    fi
else
    PARAM="*"
fi

if [ ! -x $PARAM ]
then
    if [ -d $PARAM ]
    then
    else
        ln -s $0/$PARAM /usr/local/bin/$PARAM > /dev/null 2>&1
    fi
fi

