INFFILE=$1
TIMEFILE=$2

read a
rm -f test/*.in test/*.out &&
    oj d $a &&
    echo $a > $INFFILE &&
    date +%s.%3N  >> $INFFILE &&
    : > $TIMEFILE &&
    cp test/sample-1.in debug.in
