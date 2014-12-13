#!/bin/bash
mkdir -p scratch
cd scratch
curl http://www.cftc.gov/files/dea/history/fut_disagg_txt_2014.zip > f_2014.zip
unzip f_2014.zip
mv f_year.txt f_2014.txt
curl http://www.cftc.gov/files/dea/history/fut_disagg_txt_2013.zip > f_2013.zip
unzip f_2013.zip
mv f_year.txt f_2013.txt
cat f_2014.txt f_2013.txt > f_all_year.csv
rm f_201*.*
sed 's/CRUDE OIL\, LIGHT SWEET/CRUDE OIL LIGHT SWEET/' f_all_year.csv > f_sub.csv
awk -F "," '{OFS=","};{print $1, $3, $8, $22, $23 }' f_sub.csv > f_col.csv
sed -n '/CRUDE OIL LIGHT SWEET - NEW YORK MERCANTILE EXCHANGE/p' f_col.csv > cot.csv
rm f_*.csv
cd ..
mkdir -p reports
MathKernel -noprompt -run "<<./cot.m"
rm scratch/cot.csv
