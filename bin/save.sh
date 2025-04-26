# $1=url $2=filePaath
url="$1"
filePath="$2"
[ -z "$filePath" ] && exit 1
d=$(date '+%Y-%m-%d-%H:%M:%S')

mkdir -p $filePath
cp a.cpp "${filePath}/${d}.cpp"
echo saving to $filePath...
echo $d >> $filePath/time.list
cat time.list >> $filePath/time.list
: > time.list
