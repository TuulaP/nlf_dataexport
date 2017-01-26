## pick-textfromxml

The purpose of the script is to extract just the raw text from the custom XML of the National Library of Finland.

- [Running for several files in a directory](#running-for-several-files-in-a-directory)
At the end the extracted text is written to the stdout.

####Input parameters

* -input filename  (should be in the custom export XML format of #NatLibfi .
* -output filename|stdout   (filename where the raw text is written)

One example version of the expected data can be found from ../data directory.

Note! Doesn't check the existance of output file, so will overwrite if there is a file
with the same name.


###Example of use:

python pick_textfromxml.py -i ..\data\1457-4721_1871-07-03_77_001.xml


### Running for several files in a directory

for %F in (..\data\*.xml) do python pick_textfromxml.py -i %F -o %~nF_rawb.txt    (windows)
