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
   echo "Install Desktop-Utils by Morpheus636."
   echo
   echo "Symlinks all the scripts included in ./scripts/ to ~/.local/bin/ or a specified directory."
   echo
   echo "Syntax: ./install.sh [-d|h]"
   echo "options:"
   echo "-d     Specify a directory other than ~/.local/bin to symlink the scripts to."
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


# Silently uninstall the scripts from DESTINATION
chmod +x $SCRIPTPATH/uninstall.sh
$SCRIPTPATH/uninstall.sh -d $DESTINATION > /dev/null


# Install the scripts to DESTINATION
#togglevpn
chmod +X $SCRIPTPATH/scripts/togglevpn
ln -s "$SCRIPTPATH/scripts/togglevpn" "$DESTINATION"
