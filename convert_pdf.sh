#!/bin/bash


usage()
{
	echo "Syntax : $0 input_file output_file"
	exit 1
}

if [ -z "$1" ] || [ -z "$2" ] ; then
	usage
fi
if [ ! -f "$1" ] ; then
	echo "Le fichier n'existe pas." >&2
	usage
fi

gs -q -dSAFER -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dPDFSETTINGS=/printer -sOUTPUTFILE="$2" -f "$1"
