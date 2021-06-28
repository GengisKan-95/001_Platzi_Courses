#!/bin/bash
function replace()
{
    local text="$1"
    local busc="$2"
    local repl="$3"
    echo ${text//$busc/$repl}
}
function replace_once()
{
    local text="$1"
    local busc="$2"
    local repl="$3"
    echo ${text/$busc/$repl}
}
function longitud()
{
    local text="$1"
    echo ${#text}
}
function recorta()
{
    local text="$1"
    local desde=$2
    local hasta=$3
    [ -z $hasta ] && echo ${text:$desde} || echo ${text:$desde:$hasta}
}
function encuentra()
{
    local text="$1"
    local subt="$2"
    [[ "$texto" == *"Windows"* ]] && true || false
}
function ruta_archivo()
{
    local fich="$1"
    echo "${fich%/*}"
}
function base_archivo()
{
    local fich="$1"
    echo "${fich##*/}"
}
function extension_archivo()
{
    local fich="$1"
    echo ${fich##*.}
}
function extension_archivo2()
{
    local fich="$1"
    echo ${fich#*.}
}
function posicion_cadena()
{
    local text="$1"
    local subc="$2"
    tmp="${text%%$subc*}"
    [[ "$texto" = "$tmp" ]] && echo -1 || echo ${#tmp}
}

numberGame=9583
qtyLetters=$((${#numberGame}-1))
countPicas=0
countFijas=0

while true;
do
    read -p "Enter a number: " numberUser 

    for(( count=0; count<=$qtyLetters; count++ ))
    do
        for (( count02=0; count02<=$qtyLetters; count02++ ))
        do
            if [ ${numberGame:$count:1} -eq ${numberUser:$count02:1} ];
            then
                if [ $count -eq $count02 ];
                then
                    ((countFijas++))
                else
                    ((countPicas++))
                fi
            fi
        done
    done
    echo $countPicas $countFijas
    if [ $countFijas -eq 4 ];
    then
        break
    else
        countPicas=0
        countFijas=0
    fi
done

echo Ganaste :D
