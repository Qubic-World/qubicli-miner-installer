#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NOCOLOR='\033[0m'

get_miner_name() {
    local host_name=$(hostname)
    local ip=$(hostname -I)
    local miner_name=$host_name"_"$1"_"$ip

    echo "$miner_name"
}

# Validate argumets

toker=$1
if [ -z "$1" ]; then
    echo "<TOKEN>: Your personal token to access the API"
    echo "<IGNORENUMBEROFTHREADS> (OPTIONAL) if possible, exclude N processing units"
    exit 1
fi

# Get ignore number of threads
ignore_number_of_threads=0
if [ "$2" ]; then
    ignore_number_of_threads=$2
fi

# Display miner info

token=$1
thread_number=$(nproc --ignore=$ignore_number_of_threads)
miner_name=$(get_miner_name $thread_number)
echo -e "Miner name: ${GREEN}${miner_name}${NOCOLOR}"
echo -e "Nmber of threads: ${GREEN}${thread_number}${NOCOLOR}"

# Install

# Update packages
apt update
# Install .Net 6
apt install dotnet6 -y
# download service installation script
rm qli-Service-install.sh || wget https://app.qubic.li/cloud-init/qli-Service-install.sh
# set the script as executable
chmod u+x qli-Service-install.sh
systemctl stop qli
# install qubic.li client as systemd service
# Syntax: qli-Service-install.sh <threads> <accessToken|payoutId> [alias]
./qli-Service-install.sh $thread_number $token $miner_name
