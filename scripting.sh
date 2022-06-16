echo "SCRIPT FOR IP RESOLUTION OF SUBDOMAINS"
echo 
echo "enter any domain name"
read a
#i am using--khaadi.com-- as my domain name
echo
#using sublist3r for domains
echo "----------------SUBLIST3R------------------"
sublist3r  -d $a -o domains.txt
echo 
echo "-----------IP RESOLUTION OF SUBDOMAINS------------"
for c in $(cat domains.txt); do
host $c   
done
echo 
echo "--------------BRUTE HOST OF SUBDOMINS-----------"
dnsrecon -d $a -D /home/kali/Desktop/subdomains1000.txt -t brt -j /home/kali/Desktop/subip.txt
echo
#subip.txt for saving results of brute hosts in file

echo "********--THE END--************"
