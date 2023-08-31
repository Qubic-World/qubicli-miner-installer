# Qubicli Miner Installer

This script is a wrapper for installing the [qubic.li client](https://github.com/qubic-li/client)

# Miner name

The name for the miner is generated from hostname, number of thread and ip: `miner_24_88.88.88.88`

# Number of threads

The number of threads is set to the maximum possible on the processor. To reduce the number of threads you need to pass the number of threads to be reduced by as the second argument to the script
`sudo bash installer.sh <token> 2`
<br></br>
If you have a total of 24 cores on your processor, passing 2 as the second argument. This will create a miner with `22` threads


# Example

## Run if you have downloaded installer.sh to your computer

```bash
sudo bash installer.sh <token> [ignore_number_of_threads] [disable_avx512]
```

## AVX2

To switch from `AVX512` to `AVX2`, you must add `avx2` to the command. **Important**, if you do not use [ignore_number_of_threads], then you must set 0 after [token]:
```bash
sudo bash installer.sh tokentokentoken 0 avx2
```


## Running without downloading installer.sh

```bash
curl https://raw.githubusercontent.com/Qubic-World/qubicli-miner-installer/main/installer.sh | sudo bash -s <token> [ignore_number_of_threads] [avx2]
```
**Important**, if you do not use [ignore_number_of_threads], then you must set 0 after [token]:

### AVX2
```bash
curl https://raw.githubusercontent.com/Qubic-World/qubicli-miner-installer/main/installer.sh | sudo bash -s <token> 0 avx2
```
