#!/bin/sh
# -*- tcl -*-
# The next line is executed by /bin/sh, but not tcl \
exec tclsh "$0" ${1+"$@"}

# The purpose of the script is to extract just the raw text from the custom XML of the National Library of Finland.
# At the end the extracted text is written to the stdout.


# Usage
# tclsh "$0" ..\data\1457-4721_1871-07-03_77_001.xml > outputfile.tmp

# ********************************
# This is the TCL implementation


# ******* main ****

if { $argc < 1 } {
    puts "Please give input file name as first argument."
} else {
    set inputfile [lindex $argv 0]
}


#  Slurp up the data file , source: http://wiki.tcl.tk/367
set fp [open $inputfile r]
set filedata [read $fp]
close $fp

# TODO; Doesn't use proper XML parsing
regexp {(CDATA\[)(.*)\]\]\><\/text\>.*$} $filedata all -> textpart


puts -nonewline $textpart

