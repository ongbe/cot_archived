cot: Confidence of Traders

About
=====

Generate a "Confidence of Traders" report based upon Chicago Board of Trade (CBOT) data of 
small investor long versus short positions. More info on the data and usefulness of the plot can be found at
the [Pragmatic Capitalism](http://pragcap.com/capitulation-not-over-in-crude-oil) website.

Prerequisites
=============

Mathematica (tested on version 8)

Installation
============

Ensure `MathKernel` (Mac OS X) or `math` (Linux) is in your path, as appropriate. Make sure the `cot.bash`
script is executable with `chmod u+x cot.bash`.

Execution
=========

Run `./cot.bash`. CBOT data will be downloaded to the `scratch` directory (created if one doesn't exist) and 
manipulated for import
into Mathematica. The bash script will execute a short Mathematica script to generate an overlay of two ListPlots. 
One plot is of net long positions (longs minus shorts divided by total open interest). The other ListPlot is
just of the closing price of the iPath S&P GSCI Crude Oil Total Return Index Exchange Traded Fund, ticker OIL. 
Similar plots for wheat, corn, and soybeans are also created, but they seem to be of limited utility.

Output
======

A PDF of a plot generated in the `reports` directory. (The `reports` directory is created if one doesn't exist.




