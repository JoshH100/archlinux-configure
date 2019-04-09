#!/bin/bash
## bb136
#IFS=','
declare -A lab
lab[bb136]="1,24"
lab[ch215l]="1,17"
lab[ch275l]="1,8"
lab[ck182]="18,34"
lab[grla110]="1,29" #?

for i in "${!lab[@]}"
do
	limits=${lab[$i]}
	IFS=',' read start end <<< ${limits}
	for x in $(seq -f "%02g" $start $end)
	do
	  echo $i-$x
	done
done

# podiums and 1 offs
echo ch215li
echo grla110i
echo isengard
echo imagine
echo pvm-jumpbox
