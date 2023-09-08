#!/bin/bash

filetype_=""

while getopts ":d:t:f:" options
do

        case "${options}" in

                f)

                        filetype_=${OPTARG}

                        ;;

                d)

                        delimiter_=${OPTARG}

                        ;;

                t)

                        target_=${OPTARG}

                        ;;

                :)

                        echo "options are '-d', the delimiter you want to replace and '-t', the delimiter you want to put"
                        
                        exit 1

                        ;;

                *)

                        echo "options are '-d', the delimiter you want to replace and '-t', the delimiter you want to put"
                       
                        exit 1

                        ;;


        esac

done

if [ ! -f av.txt ]
then

        touch av.txt

else

        echo "" > av.txt

fi

if [ ! -f ap.txt ]
then

        touch ap.txt

else

        echo "" > ap.txt

fi

echo "$delimiter_ $target_ $filetype_"

ls $(pwd)/$filetype_ | xargs -I X echo X > av.txt

cat av.txt | sed "s/${delimiter_}/${target_}/g" > ap.txt

a=$(cat av.txt | wc -l)

for i in $(seq 1 $a)
do

        source_=$(sed -n ${i}p av.txt)

        renamed_=$(sed -n ${i}p ap.txt) 

        if [ ! "$source_" = "$renamed_" ]
        then

                mv "$source_" "$renamed_"

        fi

done



