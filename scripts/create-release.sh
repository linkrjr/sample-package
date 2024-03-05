#! /bin/sh

echo "$(pwd)"

value=$(<VERSION)

major=`echo $value | cut -d. -f1`
minor=`echo $value | cut -d. -f2`
patch=`echo $value | cut -d. -f3`

echo $major
