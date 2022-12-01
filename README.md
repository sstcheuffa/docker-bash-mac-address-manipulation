# docker-bash-mac-address-manipulation

Creates a Docker container running a BASH script to display the vendor when given a MAC address as input.

Step 1: clone the repo to your local computer

Step 2: sign up and create an account at https://macaddress.io => obtain an API key value

Step 3: update the API key value (YOUR_API_KEY) in get-mac-vendor.sh at my_api_key="YOUR_API_KEY"

Step 4: while in the folder containing the Dockerfile create the container using : 
docker build -t get-mac-vendor .

Step 5: run the script using the MAC_ADR env variable to pass your input MAC address (change 44:38:39:ff:ef:57): 
docker run -it -e "MAC_ADR=44:38:39:ff:ef:57" get-mac-vendor.

The script displays the vendor's name: for 44:38:39:ff:ef:57 it is: Cumulus Networks, Inc.

## Security
Curl has built-in support for Secure Transport connections (SSL or TLS).
When you make a Curl request against an HTTPS URL, Curl automatically checks the target URL's SSL certificate
against the local CA certificate store and warns if it is invalid, self-signed, or has expired.

You can use curl syntax below to disable certificate validation:
* curl -k [URL] [URL]
* curl --insecure [options] [URL]
