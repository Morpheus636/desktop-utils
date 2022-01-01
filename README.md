# Morpheus636's Desktop Utility Scripts
This repository contains a set of utility scripts I wrote for myself to make
my life easier on Ubuntu 20.04 with Gnome destkop.

If you find a bug, you can feel free to report it in a GitHub Issue on this
repository, or fork this repo and open a pull request with a fix. 

If you have a feature request, you can open a GitHub issue, or fork this repo
and open a pull request with the feature. Although I may not accept the changes
because the scripts are written for my own personal use and designed around my
needs, you're welcome to maintain your own fork designed around your needs 
(as long as you follow the terms of the GPL).

## Installation
### `install.sh` script
The `install.sh` script symlinks all scripts to a location on PATH so they can
be called by typing the name of the script in the terminal (without the need to give an absolute or relative path to it)

After running `install.sh`, updates to existing scripts will be applied automatically when you run `git pull` in this repo. When new scripts are added, you can run `install.sh` again to add them.

#### Instructions:
- Clone this repo to your home directory.
- `cd` into the repo.
- Run `chmod +x ./install.sh`
- Run `./install.sh`
    - OPTIONAL: You can provide a path and it will symlink the
    scripts to that directory instead of the default (~/.local/bin) using the `-d` flag.
        - ex: `install.sh -d /path/to/a/different/directory/`

__NOTE__:
If you use the `install.sh` script to install this repo, it creates symlinks from each script (listed below under usage)
to `~/.local/bin` (or another specified directory). Ensure that `~/.local/bin` (or the specified directory)
is on PATH, and that this repo does not get moved or deleted after you run `install.sh` without first uninstalling properly (see below) because the scripts will stop functioning and it will leave broken
symlinks on your system.

__WARNING__: This script will force-delete any files in the destination (either
`~/.local/bin` or a directory you specify) that have the same name as a script
listed below (under usage). Ensure that there are no conflicts before running.

### Other Installation Options
While the `install.sh` script is the easiest (and reccommended) way of using
these scripts, you can still do any of the following (all of which will require you to `chmod +x` each script you want to use):
- Nothing! Just provide a full path to the scripts when you call them.
- Manually symlink all the scripts you want to use to a location on PATH.
- Manually copy or move the scripts you want to use to a location on PATH.

## Uninstallation
### `uninstall.sh` script
The `uninstall.sh` script is effectively the opposite of `install.sh`. It removes symlinks to the scripts in `./scripts/` from `~/.local/bin`
or from another directory specified with the `-d` flag.

#### Instructions
- `cd` into the repo.
- Run `chmod +x ./uninstall.sh`
- Run `./uninstall.sh`
    - OPTIONAL: You can use the `-d` flag to provide a path and it will remove the symlinks to scripts in `./scripts/` from that directory instead of from the default (~/.local/bin).
        - ex: `uninstall.sh -d /path/to/a/different/directory/`

__WARNING__: This script will force-delete any files in the destination (either
`~/.local/bin` or a directory you specify) that have the same name as a script
listed below (under usage). Ensure that there are no conflicts before running.


## Usage
A list of the scripts included and what they do is below. For usage specific to each script, run the script with
a `-h` option (ex: `togglevpn -h`)

### List of Scripts
- `togglevpn`
    - Uses `nmcli` to toggle a vpn connection on and off. By default, it toggles
    a connection with the name `Client`, but the `-c` flag can be used to manually
    select a different connection.


## Copyright Notice
© Copyright 2021 Josh Levin ([Morpheus636](https://github.com/morpheus636))

This repository (and everything in it) is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This repository is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this repository.  If not, see <https://www.gnu.org/licenses/>.
