#!/bin/sh

# Joshua Bechtel

# This script is able to scan a defined range of IP addresses using NMAP and then produce results in a text file

# Variable defined for the IP address that will be scanned
vlanip="10.140.1."

# Variable defined for the text file that the scan will be stored in
scanfile=~/nmapresult.txt

# Asks user to enter the first number 
echo "Enter the first number for X in the IP address (10.140.1.X)."
read firstnumber

# Asks user to enter the last number
echo "Enter the last number for X in IP address(10.140.1.X)."
read lastnumber

# Prints both full IP addresses which will then have their range scanned
echo "Starting IP: $vlanip$firstnumber"
echo "Ending IP: $vlanip$lastnumber"

# This loop first creates a sequence using the user given numbers and then prints each IP address out before performing a scan via nmap, then it will put that data into a text file called nmapresults.txt
for ipsec in `seq $firstnumber $lastnumber`; do
echo "Scanning ... $vlanip$ipsec"
ipscan=$(nmap $vlanip$ipsec)
{
echo $ipscan
echo " "
}>>$scanfile
done 

# Statement printed after nmap scan is complete
echo "Scan saved to nmapresults.txt"




