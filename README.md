# 🔍 Smart-Search-CLI

> **⚡ Lightning-fast Windows CLI search automation tool** bypassing bot protection with intelligent URL encoding and multimodal search capabilities.

---

## ✨ Project Showcase

**Smart-Search-CLI** is a sophisticated Windows-native automation framework that transforms your CLI into a powerful, multimodal search engine. Engineered for **telecommunications specialists, students, and researchers** who demand speed and efficiency.

### 🎯 Key Highlights

- **🚀 Zero-Configuration Setup** - Add to PATH and you're ready
- **📡 6 Search Modalities** - PDF, YouTube, Images, Books, Articles, Default Google
- **🔐 Bot-Protection Bypass** - Intelligent URL encoding with [System.Uri]::EscapeDataString
- **🎨 Colored Terminal Output** - Professional status messages with PowerShell formatting
- **⚙️ Batch + PowerShell Hybrid** - Resilient dual-engine architecture
- **📚 Interactive Menu Loop** - Continuous search sessions with graceful exit handling

---

## 🚀 Quick Start

### Prerequisites
- Windows 10/11
- PowerShell 5.0+
- System PATH access

### Installation

1. **Download the scripts**
   ```bash
   git clone https://github.com/MahmoudAshrafYadem/Smart-Search-CLI.git
   cd Smart-Search-CLI/src
   ```

2. **Add to Windows PATH** (Admin PowerShell)
   ```powershell
   [Environment]::SetEnvironmentVariable(
     "Path",
     "$env:Path;C:\path\to\Smart-Search-CLI\src",
     "User"
   )
   ```

3. **Verify Installation**
   ```bash
   search 5G network optimization
   ```

---

## 📖 Usage Guide

### Basic Syntax
```bash
search <your search query>
```

### Interactive Menu
```
SEARCHING FOR: 5G network optimization

1 - PDF Direct Links
2 - YouTube Videos
3 - Images
4 - Books
5 - Articles/Web
6 - Default Search
7 - Exit

Enter option: 
```

### Examples

**Search for RF planning PDFs**
```bash
search RF planning fundamentals
# Select option 1 from menu
```

**Find YouTube tutorials on MIMO**
```bash
search MIMO antenna systems
# Select option 2 from menu
```

**Locate technical articles**
```bash
search 5G RAN architecture
# Select option 5 from menu
```

---

## 🏗️ Architecture

### Component Stack

```
┌─────────────────────────────────────┐
│     search.bat (Batch Launcher)     │
│  - Query parsing & validation       │
│  - Interactive menu loop           │
│  - ErrorLevel handling             │
└──────────────┬──────────────────────┘
               │
               ▼
┌─────────────────────────────────────┐
│   search.ps1 (PowerShell Engine)    │
│  - URL encoding (System.Uri)        │
│  - 6 search modifiers              │
│  - Browser automation              │
│  - Colored output formatting       │
└─────────────────────────────────────┘
               │
               ▼
┌─────────────────────────────────────┐
│     Web Browser (Default)           │
│  - Google Search                   │
│  - YouTube                         │
│  - And more...                     │
└─────────────────────────────────────┘
```

---

## 🔧 Technical Features

### URL Encoding Security
- Implements `[System.Uri]::EscapeDataString()` for safe query encoding
- Prevents injection attacks and special character handling
- Compliant with RFC 3986 standards

### Search Modifiers
```powershell
filetype:pdf      # Academic papers & documentation
images           # Visual search results
book             # Published books only
article          # Technical articles
```

### Error Handling
- Graceful null/empty query validation
- Invalid option detection
- Recoverable menu loop with exit option

---

## 💡 Use Cases

### For Telecommunications Engineers
- Quick access to 3GPP specifications
- RF planning documentation
- Network optimization papers

### For Students
- Research material aggregation
- Multi-format learning resources
- Rapid literature review

### For Content Creators
- Efficient resource gathering
- Video reference finding
- Technical documentation research

---

## 📦 File Structure

```
Smart-Search-CLI/
├── src/
│   ├── search.bat          # Main launcher script
│   └── search.ps1          # PowerShell engine
├── LICENSE                 # MIT License
├── README.md              # This file
└── .gitignore             # Git ignore rules
```

---

## 🛠️ Development Notes

### Execution Policy
If PowerShell execution policy blocks the script:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Customization
Edit `search.ps1` to:
- Add custom search engines
- Modify color scheme
- Extend search modifiers

---

## 📜 License

MIT License - See LICENSE file for details

**Copyright © 2026 MahmoudAshrafYadem**

---

## 🤝 Contributing

Contributions welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

---

## 📞 Support & Contact

- **GitHub Issues** - Report bugs and request features
- **LinkedIn** - [MahmoudAshrafYadem](https://www.linkedin.com/in/mahmoud-ashraf-yadem-695831201/)
- **Email** - Available upon request
---

## ⭐ Show Your Support

If you find this project useful:
- ⭐ Star this repository
- 🍴 Fork it
- 📢 Share it with others
- 💬 Provide feedback

---

## 🎓 Built With

- **Batch Programming** - Windows CMD scripting
- **PowerShell 5.0+** - Advanced automation framework
- **System.Uri Class** - RFC 3986 compliant encoding
- **.NET Framework** - Browser automation

---

**Made with ❤️ by a Telecommunications Engineer**

*Last Updated: January 2026*
