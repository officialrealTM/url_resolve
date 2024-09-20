# URL Resolve by realTM

This tool can be used for two different purposes:
- Resolving shortened URLs (e.g. bit.ly links or similar)
- Detecting if a Link belongs to the Contabo Affiliate Program and if display the CJ PID as well as the page it leads to (e.g. VPS, DS etc.)


# Installation under Windows

This script only works in Unix-like environments, so in order for it to be ran on Windows you need to use WSL (Windows Subsystem for Linux).
Please refer to [this guide](https://contabo.com/blog/how-to-install-wsl2-on-windows-10/)

After sucessfully installing WSL go ahead and install git:

    apt install git -y
Now download the GitHub Repository:

    git clone https://github.com/officialrealTM/url_resolve.git
Now head into the downloaded folder with:

    cd url_resolve
And execute the script together with providing a URL you want to have resolved/analyzed, for example:

    ./url_checker.sh https://www.tkqlhce.com/click-101116085-15692486
The output could look like this:
![enter image description here](https://share.realtm.de/url_resolve_result.png)
# Installation under macOS
In order to use this tool under macOS you need to install Homebrew, a free and open-source package manager for macOS.
More information on how to install Homebrew can be found [here](https://docs.brew.sh/Installation).

After installing Homebrew go ahead with installing Git:

    brew install git
Now clone this repository using:

    git clone https://github.com/officialrealTM/url_resolve.git
Go into the downloaded repo using:

    cd url_resolve
Now execute the script together with providing a URL you want to have resolved/analyzed, for example:

    ./url_checker.sh https://www.tkqlhce.com/click-101116085-15692486
The output could look like this:
![enter image description here](https://share.realtm.de/url_resolve_result.png)
