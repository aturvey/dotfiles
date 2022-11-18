#!/usr/bin/env bash
clear
printf "\n\n"

# first 8 'standard' colors
for c in {0..7} ; do
    let i=c
    # printf "\033[38;5;0;48;5;${i}m"
    printf "\033[38;5;${i}m"
    printf '%03d ' ${i} 
done
printf "\033[0m\n"

# 3 blocks of 36 'standard' colors
for r in {0..5} ; do
    for e in {0..0} ; do
        for b in {0..2} ; do
            for c in {0..5} ; do
                let i=36*r+18*e+6*b+c+16
                printf "\033[38;5;${i}m"
                printf '%03d ' ${i} 
            done
            printf "  "
        done
    done
    printf "\033[0m\n"
done

# twelve 'standard' grayscale colors
for c in {232..243} ; do
    let i=c
    printf "\033[38;5;${i}m"
    printf '%03d ' ${i} 
done
printf "\033[0m\n"


# first 8 'high intensity' colors
printf "\n"
for c in {0..7} ; do
    let i=c+8
    # printf "\033[38;5;0;48;5;${i}m"
    printf "\033[38;5;${i}m"
    printf '%03d ' ${i} 
done
printf "\033[0m\n"

# 3 blocks of 36 'high intensity colors'
for r in {0..5} ; do
    for e in {1..1} ; do
        for b in {0..2} ; do
            for c in {0..5} ; do
                let i=36*r+18*e+6*b+c+16
                printf "\033[38;5;${i}m"
                printf '%03d ' ${i} 
            done
            printf "  "
        done
    done
    printf "\033[0m\n"
done

# twelve 'high intensity' grayscale colors
for c in {244..255} ; do
    let i=c
    printf "\033[38;5;${i}m"
    printf '%03d ' ${i} 
done
printf "\033[0m\n\n"

# printf 'Set foreground color: \\033[38;5;<Foreground Color>m\n'
# printf 'Set background color: \\033[48;5;<Background Color>m\n'
# printf "\n\n"
