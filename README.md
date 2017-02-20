# Automagic geckodriver installer

[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks!-%F0%9F%A6%89-1EAEDB.svg)](https://saythanks.io/to/lyndsysimon)

## Instructions

### Easy Mode

Try this one-liner on for size:

`wget https://raw.githubusercontent.com/BroadAxeC3/geckodriver-installer/master/geckodriver_installer.sh && chmod +x geckodriver_installer.sh && ./geckodriver_installer.sh && rm geckodriver_installer.sh`

### Almost-as-easy Mode

1. Clone this repository: `git clone https://github.com/BroadAxeC3/geckodriver-installer.git"
2. From the repository directory, execute the provisioning script: `./geckodriver_installer.sh`
3. To verify installation, open a new shell and execute: `which geckodriver`. If it is intalled correctly, this should return the path to the binary; if there is a problem, it will return `geckodriver not found`.


## Limitations

This script assumes that the user is using bash as their default shell, or at least running bash-compliant shell with `~/.bash_profile` as part of their shell init. As far as I know this is the default for all versions of macOS, and it should work with most *nix flavors as well. I can adapt the script to handle additional shells and environments, but my assumption is that if you're running something other than bash on macOS you probably don't need this script :).

That said, please feel free to submit an issue if you'd like me to support your environment.
