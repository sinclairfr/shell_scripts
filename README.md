# 🐚 Shell Scripts Collection

A collection of shell scripts for file management and renaming operations.

## 📋 Scripts

### 🔄 `simplify`
A smart file renaming script that:
- Converts filenames to ASCII (removes accents)
- Converts to lowercase
- Replaces non-alphanumeric sequences with underscores
- Preserves file extensions
- Creates a log file for potential undo operations
- Supports dry-run mode for testing

Usage:
```bash
./simplify [--dry-run] [--log <logfile>] file1 file2 ...
```

### ↩️ `undo_rename`
A script to revert file renaming operations by:
- Reading a log file created by `simplify`
- Reverting files to their original names
- Processing operations in reverse order
- Safely handling existing files

Usage:
```bash
./undo_rename [--log <logfile>]
```

## 🚀 Getting Started

1. Clone the repository:
```bash
git clone <repository-url>
```

2. Make the scripts executable:
```bash
chmod +x simplify undo_rename
```

3. Run the scripts:
```bash
# To rename files:
./simplify file1.txt file2.jpg

# To undo renaming:
./undo_rename
```

## 📝 Usage Examples

### Simplify Script
```bash
# Basic usage
./simplify "Mon Fichier.txt" "Photo 2023.jpg"

# Dry run to preview changes
./simplify --dry-run "Mon Fichier.txt"

# Custom log file
./simplify --log custom.log "Mon Fichier.txt"
```

### Undo Rename Script
```bash
# Basic usage (uses default rename.log)
./undo_rename

# Custom log file
./undo_rename --log custom.log
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ⭐ Features

- 🎯 Smart file renaming with accent removal
- 🔄 Safe undo functionality
- 📝 Detailed logging
- 🧪 Dry-run mode for testing
- 🛡️ Safety checks to prevent data loss

## 🛡️ Requirements

- Bash shell
- `iconv` command for character conversion
- `tac` command for log file reversal
- Basic Unix/Linux commands

## 📚 Documentation

For detailed documentation, refer to the comments within each script file.

---

