# Qubicli Miner Installer

This script is a wrapper for installing the [qubic.li client](https://github.com/qubic-li/client)

# Miner name

The name for the miner is generated from hostname and ip

# Number of threads

The number of threads is set to the maximum possible on the processor. To reduce the number of threads you need to pass the number of threads to be reduced by as the second argument to the script
`sudo bash installer.sh <token> 2`

# Example

## Run if you have downloaded installer.sh to your computer

```
sudo bash installer.sh eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjVlNjJhZjhjLWU5ZTgtNDBiMS04ZmMyLTM5Mzg0Mzk5OTcwNyIsIk1pbmluZyI6IiIsIm5iZiI6MTY3MjE3MTIwMywiZXhwIjoxNzAzNzA3MjAzLCJpYXQiOjE2NzIxNzEyMDMsImlzcyI6Imh0dHBzOi8vcXViaWMubGkvIiwiYXVkIjoiaHR0cHM6Ly9xdWJpYy5saS8ifQ.DJkHv_2K0eNiAkjKia8bxag5I4ixOtjk36AGE6zwzxiEFO_w8ovsoLY4ARONUwnak_N-5-W69PJbbKCphyICpQeyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjVlNjJhZjhjLWU5ZTgtNDBiMS04ZmMyLTM5Mzg0Mzk5OTcwNyIsIk1pbmluZyI6IiIsIm5iZiI6MTY3MjE3MTIwMywiZXhwIjoxNzAzNzA3MjAzLCJpYXQiOjE2NzIxNzEyMDMsImlzcyI6Imh0dHBzOi8vcXViaWMubGkvIiwiYXVkIjoiaHR0cHM6Ly9xdWJpYy5saS8ifQ.DJkHv_2K0eNiAkjKia8bxag5I4ixOtjk36AGE6zwzxiEFO_w8ovsoLY4ARONUwnak_N-5-W69PJbbKCphyICpQ
```

## Running without downloading installer.sh

```
curl https://raw.githubusercontent.com/Qubic-World/qubicli-miner-installer/main/installer.sh | sudo bash -s <token> [ignore_number_of_threads]
```
