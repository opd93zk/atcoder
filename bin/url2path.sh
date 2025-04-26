url=$1
url=${url%/}

# atcoder
if echo $url | grep -q atcoder; then
    pname=${url##*/}
    filepath="problem/AC/${pname/_//}"

# AOJ ver.2
elif echo $url | grep -q -F 'onlinejudge.u-aizu.ac.jp'; then
    # courses
    if echo $url | grep -q -F 'u-aizu.ac.jp/courses/'; then
        pname=${url##*/}
        filepath="problem/AOJ/${pname/_//}"
    # challenges
    elif echo $url | grep -q -F 'u-aizu.ac.jp/challenges/'; then
        pname=${url#*sources/}
        pname=${pname%\?*}
        filepath="problem/AOJ/${pname/\//_}"
    # problems
    elif echo $url | grep -q -F 'u-aizu.ac.jp/problems/'; then
        pname=${url##*/}
        # 出題箇所がわかるのはcourseのみ、チャレンジはわからない
        # わかる場合のみ出題コンテストでフォルダ分け
        filepath="problem/AOJ/${pname/_//}"
    # arena
    # contestには非対応
    else
        pname=${url#*#}
        filepath="problem/AOJ_ARENA/${pname%%problems*}${pname##*/}"
    fi

# AOJ ver.1
elif echo $url | grep -q -F 'judge.u-aizu.ac.jp'; then
    pname=${url##*id=}
    # 出題箇所がわかるのはcourseのみ、チャレンジはわからない
    # わかる場合のみ出題コンテストでフォルダ分け
    filepath="problem/AOJ/${pname/_//}"
fi

echo $filepath
