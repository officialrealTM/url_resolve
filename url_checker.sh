#!/bin/bash

# Check if a URL is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <shortened_url>"
    exit 1
fi

# Get the shortened URL from the command line argument
shortened_url="$1"

# Use curl to follow redirects and get the final URL
resolved_url=$(curl -sIL -o /dev/null -w '%{url_effective}' "$shortened_url")

# Check if the resolved URL is a contabo.com URL and extract PID if present
if [[ $resolved_url == *contabo.com* ]]; then
    # Extract PID using sed
    pid=$(echo "$resolved_url" | sed -n 's/.*PID=\([0-9]*\).*/\1/p')

    if [ -n "$pid" ]; then
        # Output "Affiliate detected" in green and the PID on the next line
        echo -e "Affiliate detected!"
        echo "Extracted PID: $pid"

        # Extract the page information
        page_info=$(echo "$resolved_url" | sed -n 's/.*\/\(en\|de\)\/\([^/?]*\).*/\2/p')
        if [ -n "$page_info" ]; then
            echo "Directs to page: $page_info"
        else
            echo "Unable to determine the specific page"
        fi
    else
        # If no PID is found, output the resolved URL
        echo "Resolved URL: $resolved_url"
    fi
else
    # If not a contabo.com URL, output the resolved URL
    echo "Resolved URL: $resolved_url"
fi
