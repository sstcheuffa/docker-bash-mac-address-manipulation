#!/bin/bash
#
# Serge Tcheuffa - 301-300-5502
#
## Calls the macaddress.io API and returns the company name
# using a MAC address as input
#
## Copy and paste the code in a get-mac-address.sh file 
## Copy and paste the line below to the command line to test: 
# ./get-mac-address.sh 44:38:39:ff:ef:57
#
## Register on the website https://macaddress.io to get your API authorization key
# Enter your PAI key below betwen the quotes
my_api_key="at_KlHo61xYpMI4ro8whszoVzfGJtx3R"

# Build the search string with your api key and the 1st parameter passed to the script
search_string="https://api.macaddress.io/v1?apiKey=${my_api_key}&output=json&search=${1}"

# Run the curl command with the search string as parameter
result=`curl $search_string`

# Use a regular expression to extract the companyName
company=`grep -oP '(?<="companyName":")[^"]*' <<< $result`

# Display the api call's json output
echo -e "\nThe json output returned by the macaddress.io api call is below:"
echo $result

# Displays the company name
echo -e "\nThe company name is: $company"


## Security
# Curl has built-in support for Secure Transport connections (SSL or TLS). 
# When you make a Curl request against an HTTPS URL, Curl automatically checks the target URL's SSL certificate 
# against the local CA certificate store and warns if it is invalid, self-signed, or has expired.
# You can use curl syntax below to disable certificate validation
# curl -k [URL] [URL]
# curl --insecure [options] [URL]
