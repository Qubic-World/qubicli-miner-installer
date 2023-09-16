# Qubicli Miner Installer

This script is a wrapper for installing the [qubic.li client](https://github.com/qubic-li/client)

# Installer Parameters

## Token

To set a token use `-t token`.

## Setting the number of threads

You can set the number of threads in three ways:
1. Do not specify anything. In this case all cores on the machine will be used
2. A specific number of threads can be specified via the flag `-c`: `-c 32`.
3. Using the `-i` flag, you can specify how many threads to free from mining: `-i value`. If you have only **32** cores and you set `-i 2`, then **30** threads will be created for mining

## AVX2

The default is **Avx512** if you have a processor that supports these instructions. To force the use of **Avx2**, set the `-a` flag to no value

## Version

If you want to use a specific version, use the `-v version` flag: `-v 1.3.9`

# Miner name

The name for the miner is generated from hostname, number of thread and ip: `miner_24_88.88.88.88`

# Example

## Run if you have downloaded installer.sh to your computer

```bash
sudo bash installer.sh -v 1.3.9 -a -t eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjVlNjJhZjhjLWU5ZTgtNDBiMS04ZmMyLTM5Mzg0Mzk5OTcwNyIsIk1pbmluZyI6IiIsIm5iZiI6MTY3MjE3MTIwMywiZXhwIjoxNzAzNzA3MjAzLCJpYXQiOjE2NzIxNzEyMDMsImlzcyI6Imh0dHBzOi8vcXViaWMubGkvIiwiYXVkIjoiaHR0cHM6Ly9xdWJpYy5saS8ifQ.DJkHv_2K0eNiAkjKia8bxag5I4ixOtjk36AGE6zwzxiEFO_w8ovsoLY4ARONUwnak_N-5-W69PJbbKCphyICpQ
```

## Running without downloading installer.sh

```bash
curl https://raw.githubusercontent.com/Qubic-World/qubicli-miner-installer/main/installer.sh | sudo bash -s -- -a -c 32 -t eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjVlNjJhZjhjLWU5ZTgtNDBiMS04ZmMyLTM5Mzg0Mzk5OTcwNyIsIk1pbmluZyI6IiIsIm5iZiI6MTY3MjE3MTIwMywiZXhwIjoxNzAzNzA3MjAzLCJpYXQiOjE2NzIxNzEyMDMsImlzcyI6Imh0dHBzOi8vcXViaWMubGkvIiwiYXVkIjoiaHR0cHM6Ly9xdWJpYy5saS8ifQ.DJkHv_2K0eNiAkjKia8bxag5I4ixOtjk36AGE6zwzxiEFO_w8ovsoLY4ARONUwnak_N-5-W69PJbbKCphyICpQ
```
