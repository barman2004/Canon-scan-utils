#!/bin/bash

############################################################################
#
#	Author : derf974
#	Site : www.derfinfo.fr
#	
#	Repository: https://github.com/derf974
#	
#	Copyright (C) 2014  derf974
#	
#	This program is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	(at your option) any later version.
#	
#	This program is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#	
#	You should have received a copy of the GNU General Public License
#	along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#############################################################################

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
