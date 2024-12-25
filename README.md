# ![PingWatch](https://img.shields.io/badge/PingWatch-🔍-blue)  
> A Powerful Network Scanning Tool  
> _Monitor and scan your network effortlessly_

![PingWatch](https://github.com/hosseinMsh/PingWatch/assets/123456789/3f53c5e1-bec9-4f7f-b0ff-c0b6c1a3b881)

---

## 🛠️ Features

**PingWatch** comes packed with a wide range of powerful features to help you manage your network efficiently:

- **⚡ Ping Hosts**: Quickly check the availability of hosts in a specified IP range.
- **🌐 Resolve Hostnames**: Automatically resolve IP addresses to hostnames.
- **🔒 SSL Certificate Check**: Verify SSL certificate expiration for devices on port 443.
- **⚙️ Port Scanning**: Scan essential ports (e.g., 22, 80, 443) or all ports on hosts.
- **📋 Output Formats**: Generate results in `.txt` or `.csv` formats.
- **🔙 Background Execution**: Run scans in the background for long durations.

---

## 🚀 Installation

### Requirements

- Linux-based system (Ubuntu/Debian recommended)
- `ping` utility (should be pre-installed)
- `nmap` for port scanning (can be installed automatically)
- `OpenSSL` for SSL checks (usually pre-installed)

### Step-by-Step Installation

1. **Clone the repository**:

```bash
git clone https://github.com/hosseinMsh/PingWatch.git
cd PingWatch
```

2. **Install dependencies**:

If `nmap` is not installed, PingWatch will attempt to install it automatically, but you can also install it manually:

```bash
sudo apt-get install -y nmap
```

3. **Make the script executable**:

```bash
chmod +x pingwatch.sh
```

---

## 📄 Usage

You can run PingWatch with a variety of options and arguments to scan IP ranges, resolve hostnames, check SSL certificates, and more.

### Command Syntax

```bash
./pingwatch.sh -b <base_ip> -s <start_range> -e <end_range> -f <file_type> [--run-bg] [--scan-ports important/all] [--resolve-hostname] [--resolve-url <url>] [--check-ssl] [-v]
```

---

## 🏷️ Available Options

| Option | Description |
|--------|-------------|
| `-b, --base_ip <base_ip>` | Base IP address (e.g., `192.168.1`) |
| `-s, --start <start_range>` | Start of the IP range (1-255) |
| `-e, --end <end_range>` | End of the IP range (1-255) |
| `-f, --file_type <csv/txt>` | Output file type (default: `txt`) |
| `--run-bg` | Run the script in the background |
| `--scan-ports <important/all>` | Scan essential ports or all ports (`all`) |
| `--resolve-hostname` | Resolve hostnames for IP addresses |
| `--resolve-url <url>` | Resolve a URL to its IP address |
| `--check-ssl` | Check SSL certificate expiration |
| `-v, --view` | View the status of all IPs |
| `-h, --help` | Show help message |

---

## ⚡ Example Commands

### Example 1: Ping Scan for IP Range

Ping a range of IPs from `192.168.1.1` to `192.168.1.10` and output the results in `.txt` format.

```bash
./pingwatch.sh -b 192.168.1 -s 1 -e 10 -f txt
```

### Example 2: Scan Ports for IP Range

Scan ports (22, 80, 443, etc.) for the IP range `192.168.1.1` to `192.168.1.10`.

```bash
./pingwatch.sh -b 192.168.1 -s 1 -e 10 --scan-ports important -f csv
```

### Example 3: Background Scan with Hostname Resolution

Run the scan in the background and resolve hostnames for the IP range `192.168.1.1` to `192.168.1.10`.

```bash
./pingwatch.sh -b 192.168.1 -s 1 -e 10 --run-bg --resolve-hostname -f txt
```

### Example 4: Check SSL Certificates for IP Range

Check SSL certificates for devices responding on port 443 for IP range `192.168.1.1` to `192.168.1.10`.

```bash
./pingwatch.sh -b 192.168.1 -s 1 -e 10 --check-ssl -f csv
```

### Example 5: Resolve URL to IP Address

Resolve the URL `example.com` to its corresponding IP address.

```bash
./pingwatch.sh --resolve-url example.com -f txt
```

---

## 💡 Background Execution

To run the tool in the background, simply add the `--run-bg` flag. This is useful for long-running scans or when monitoring over an extended period of time.

```bash
./pingwatch.sh -b 192.168.1 -s 1 -e 254 --run-bg
```

---

## 📈 Output Format

PingWatch generates results in `.txt` or `.csv` format. Each result includes:

- **Ping responses**: Whether an IP responded or not
- **Port scan results**: Open ports for each IP
- **Hostname resolutions**: Hostname (if found) for each IP
- **SSL expiration dates**: SSL certificate expiration for devices responding on port 443

---

## 🤝 Contributing

We’d love to have your help improving **PingWatch**! Here’s how you can contribute:

1. **Fork** the repository
2. Create a new branch (`git checkout -b feature-xyz`)
3. Make your changes
4. **Commit** your changes (`git commit -am 'Add new feature'`)
5. Push to the branch (`git push origin feature-xyz`)
6. Open a **Pull Request**

---

## 🛡️ License

PingWatch is licensed under the **MIT License**. Feel free to use, modify, and distribute it!

---

## 👏 Acknowledgements

- **PingWatch** was inspired by the need for efficient network monitoring tools.
- Contributions and ideas from the open-source community are always welcome!

---

## 🏆 ASCII Art (Because Why Not?)

```plaintext
██████╗ ██╗███╗   ██╗██╗    ██╗██╗  ██╗████████╗███████╗
██╔══██╗██║████╗  ██║██║    ██║██║  ██║╚══██╔══╝██╔════╝
██║  ██║██║██╔██╗ ██║██║    ██║███████║   ██║   █████╗  
██║  ██║██║██║╚██╗██║██║    ██║██╔══██║   ██║   ██╔══╝  
██████╔╝██║██║ ╚████║██║    ██║██║  ██║   ██║   ███████╗
╚═════╝ ╚═╝╚═╝  ╚═══╝╚═╝    ╚═╝╚═╝  ╚═╝   ╚═╝   ╚══════╝
```

---

