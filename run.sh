if [ $# -eq 0 ]
then
    PARAM="./$1.*"
else
    PARAM="*"
fi

if [ ! -x $1 ]
then
else if [ -d $1 ]
else
    chmod +x $PARAM > /dev/null 2>&1
fi

$PARAM
