#!/bin/bash
#    © Copyright 2021 Josh Levin (Morpheus636 - https://github.com/morpheus636)
# 
#    This file is part of Morpheus636's desktop-utils repository.
#
#    This repository (and everything in it) is free software: 
#    you can redistribute it and/or modify it under the terms 
#    of the GNU General Public License as published by the 
#    Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This repository is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this repository.  If not, see <https://www.gnu.org/licenses/>.

SCRIPTPATH="$(dirname $(dirname $(readlink -f $0))/$(basename $0))"
DESTINATION=~/.local/bin/


# Help Menu
Help()
{
   # Display Help
   echo "Uninstall Desktop-Utils by Morpheus636."
   echo
   echo "Removes all the symlinks to scripts included in ./scripts/ from ~/.local/bin/ or a specified directory."
   echo
   echo "Syntax: ./install.sh [-d|h]"
   echo "options:"
   echo "-d     Specify a directory other than ~/.local/bin to remove the symlinks to the scripts from."
   echo "-h     Print this Help message."
   echo 
   exit 0
}

# Process the input options.
while getopts "hd:" option; do
  case ${option} in
    d ) # For option connection
      DESTINATION=$OPTARG
      ;;
    h ) # For option help
      Help
      ;;
    \? ) # For invalid option
      Help
      ;;
  esac
done


# uninstall the scripts
#togglevpn
rm -f "$DESTINATION/togglevpn"

echo "All Symlinks to Desktop-Utils scripts successfully removed from $DESTINATION"
echo "It is now safe to delete or move this directory."