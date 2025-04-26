if [ -p "/dev/stdin" ];then
		cat - | xclip -select clip
	else
		xclip -select clip -o
	fi
