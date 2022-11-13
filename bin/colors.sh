#!/usr/bin/env bash
clear
printf "\n"
# for i in {0..255} ; do
    # printf "\x1b[38;5;${i}mcolor${i} "
# done
for x in {0..31} ; do
    for y in {0..7} ; do
        let i=8*x+y
      # printf "\x1b[38;5;${i}mcolor${i} "
        printf "\033[38;5;${i}m"
        printf '%03d ' ${i} 
        # printf 'color-%03d ' ${i}
    done
    printf '\n'
done
printf "\n"
