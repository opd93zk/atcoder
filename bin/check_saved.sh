file=$1

if [ -e "$file" -a -s "$file" ]; then
    echo "$file haven't been saved. You want to save?(y/n)";
    read a;

    if [ "$a" = y ]; then make save
    elif [ "$a" != n ]; then exit 1
    fi
fi