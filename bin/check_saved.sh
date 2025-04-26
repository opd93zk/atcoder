file=$1

if [ ! -s "$1" ];
then echo "$1 haven't been saved. save now?(y/n)";
read a;
[ "$a" == y ] && make save || exit 1;
fi