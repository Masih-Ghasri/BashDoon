# Task Manager 📝

A simple and efficient Task Management application written in Bash Script.

## Features

- ✅ Add new tasks with different priority levels
- 📋 Display complete task list
- ✔️ Mark tasks as completed
- 🎯 Smart priority system (Low, Medium, High)
- 💾 Automatic local file storage

## Installation

```bash
# Download or clone the project
git clone https://github.com/Masih-Ghasri/BashDoon.git
cd poj1

# Grant execution permission to the script
chmod +x task.sh
```

## Usage

### Adding a New Task
```bash
bash task.sh add "task title"
```

### Displaying Task List
```bash
bash task.sh list
```

### Marking Task as Completed
```bash
bash task.sh done <task_number>
```

## Priority System

The program automatically detects task priorities:

| Keyword | Priority | Display |
|---------|----------|---------|
| `(important)` | Medium (M) | ⭐⭐⭐ |
| `(very important)` | High (H) | ⭐⭐⭐⭐⭐ |
| No keyword | Low (L) | ⭐ |

> **Note:** Keyword detection is case-insensitive.

## Usage Examples

```bash
# Adding different tasks
$ bash task.sh add "Plan for summer"
Added task 1 with priority L

$ bash task.sh add "Buy CLRS book"
Added task 2 with priority L

$ bash task.sh add "Fix bug #73 (very important)"
Added task 3 with priority H

$ bash task.sh add "Prepare presentation (Important)"
Added task 4 with priority M

# Display list
$ bash task.sh list
1 *     Plan for summer
2 *     Buy CLRS book
3 ***** Fix bug #73 (very important)
4 ***   Prepare presentation (Important)

# Complete a task
$ bash task.sh done 2
Completed task 2: Buy CLRS book
```

## File Structure

```
.
├── LICENSE
└── poj1
    ├── readme.md
    └── task.sh
```

### tasks.txt File Format
```
L Plan for summer
M Prepare presentation (Important)
H Fix bug #73 (very important)
```

## Error Messages

| Error | Cause | Exit Code |
|-------|-------|-----------|
| `[Error] Invalid command` | Invalid command | 1 |
| `[Error] This command needs an argument` | Missing argument | 1 |

## System Requirements

- **Operating System:** Linux, macOS, Windows (with WSL)
- **Shell:** Bash 4.0+
- **Disk Space:** Minimum 1MB

## Contributing

To contribute to this project:

1. Fork the project
2. Create a new branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to your branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is released under the MIT License - see the [LICENSE](LICENSE) file for more details.

## Special Thanks

- To everyone who contributed to the development of this tool 🙏

---

⭐ If this project was helpful to you, please give it a star!