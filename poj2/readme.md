# Hex Message Decoder 🔓

A simple Bash script that decodes and displays hexadecimal encoded messages.

## Overview

This project contains a Bash script that decodes hexadecimal-encoded text and displays the hidden message. Perfect for learning about encoding/decoding and bash scripting basics.

## Project Structure

```
.
├── LICENSE
├── poj1
│   ├── readme.md
│   └── task.sh
└── poj2
    ├── hex.sh
    └── readme.md
```

## Features

- 🔓 Decodes hexadecimal encoded messages
- 📝 Simple and lightweight Bash script
- 🚀 Easy to run and understand
- 💡 Educational tool for learning hex encoding/decoding

## Installation

```bash
# Clone the repository
git clone https://github.com/Masih-Ghasri/BashDoon.git

# Navigate to project 2
cd poj2

# Make the script executable
chmod +x hex.sh
```

## Usage

```bash
# Run the hex decoder script
bash hex.sh

# Or execute directly (if executable permission is set)
./hex.sh
```

## What it does

The script contains a hexadecimal encoded message that gets decoded and displayed when run. The encoded message in the script translates to:
```
Hello Code Star 1404, I'm Back!
```

## Understanding the Code

The script uses the `echo -e` command with hexadecimal escape sequences:

```bash
echo -e "\x48\x65\x6C\x6C\x6F\x20\x43\x6F\x64\x65\x20\x53\x74\x61\x72\x20\x31\x34\x30\x34\x2C\x20\x49\x27\x6D\x20\x42\x61\x63\x6B\x21"
```

### Hex to ASCII Breakdown:
- `\x48` = H
- `\x65` = e  
- `\x6C` = l
- `\x6C` = l
- `\x6F` = o
- `\x20` = (space)
- And so on...

The `-e` flag enables interpretation of backslash escapes, allowing the hex codes to be converted to their ASCII characters.

## Examples

```bash
# Running the script
$ bash hex.sh
Hello Code Star 1404, I'm Back!

# You can also create your own hex encoded messages
$ echo -e "\x48\x69\x21"  # Outputs: Hi!
```

## Educational Value

This project demonstrates:
- **Hexadecimal encoding/decoding** concepts
- **Bash scripting** basics with echo command
- **ASCII character representation** in hex format
- **Escape sequences** in shell commands

## Contributing

We welcome contributions! To contribute:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -m 'Add new feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Open a Pull Request


### Common Issues

- **Permission denied:** Make sure the script has execute permissions (`chmod +x hex.sh`)
- **Command not found:** Ensure you're running with `bash hex.sh` or that bash is installed
- **Unexpected output:** Verify your terminal supports the echo -e command and escape sequences

### Getting Help

If you encounter any issues:
- Check that bash is properly installed
- Verify the script file isn't corrupted
- Try running with explicit bash: `bash hex.sh`

## License

This project is licensed under the MIT License - see the [LICENSE](../LICENSE) file for details.

## Acknowledgments

- Thanks to the Code Star 1404 community
- Educational inspiration from hex encoding concepts
- Bash scripting community for best practices

---

⭐ If you find this project useful, please consider giving it a star!