#!/bin/sh

echo "Is it mornging? Please answer yes or no"
read timeofday

case "$timeofday" in 
    yes | y | YES | Yes )
        echo "Good Morning"
        echo "Up bright and early this morning"
        ;;
    [nN]*)
        echo "Good Afternoon"
        ;;
    *)
        echo "Sorry, answer not recognized"
        echo "Please answer Yes or No"
        exit 1
        ;;
esac
exit 0
