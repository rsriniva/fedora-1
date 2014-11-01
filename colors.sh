#!/bin/bash
# Term Colors
FGNAMES=('▐▐' '▐▐' '▐▐' '▐▐' '▐▐' '▐▐' '▐▐' '▐▐')
BGNAMES=('')
for b in $(seq 0 0); do
if [ "$b" -gt 0 ]; then
bg=$(($b+39))
fi
#echo -en "\033[0m ${BGNAMES[$b]}"
echo
for f in $(seq 0 7); do
echo -en "\033[${bg}m\033[$(($f+30))m ${FGNAMES[$f]} "
echo -en "\033[${bg}m\033[1;$(($f+30))m ${FGNAMES[$f]} "
done
echo
echo -e "\033[0m"
done
