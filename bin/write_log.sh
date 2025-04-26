INFFILE=$1
TIMEFILE=$2
url=$3

start_time=$(tail -n1 $INFFILE)
d=$(date +%s.%3N)

echo write $INFFILE
echo $d >> $INFFILE
echo wirte $TIMEFILE
echo $d $start_time |
    awk '{$1-=$2; s=$1%60; m = ($1 % 3600 - s)/60; h = int($1/3600); print h "h" m "m" s}' >> $TIMEFILE