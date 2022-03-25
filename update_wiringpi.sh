#!/bin/bash

#    Program:       wiringPi update (update_wiringpi.sh)
#    Author:        M. Heidenreich, (c) 2022
#
#    Description:   This program will install latest version of wiringPi
#                   to allow using it on new versions of Raspberry Pi.
#
#    How to run:    chmod u+x update_wiringpi.sh && sudo ./update_wiringpi.sh
#
#    THIS SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
#    INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS.
#    IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT,
#    OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF
#    USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
#    OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE
#    OR PERFORMANCE OF THIS SOFTWARE

# Remember current working directory
pushd /tmp > /dev/null

# Clone latest wiringPi and build it
git clone https://github.com/WiringPi/WiringPi
cd WiringPi
./build

# Reconfigure shared library settings
sudo ex -sc "a|/usr/local/lib" -cx /etc/ld.so.conf
sudo ldconfig
sudo ex -sc "d|/usr/local/lib" -cx /etc/ld.so.conf

# Cleanup
popd > /dev/null
rm -rf /tmp/WiringPi > /dev/null

echo "System updated! Try the following command to test: gpio readall"
