# fnkRigTool

A modular, UI-driven autorigging system for Autodesk Maya 2025+

Designed for rigging TDs and technical artists, `fnkRigTool` provides a clean and extensible interface to:
- Build and edit reusable rig modules
- Publish versioned modules with cleanup tools
- Duplicate modules under new namespaces
- Freeze and export flatten rigs for downstream departments

---

## 🚀 Quick Start

### Option 1: Script Editor
```python
import main
main.launch_autorig_tool()
```

### Option 2: `test/test_run.py`
To reload + launch with hot-reloading enabled:
```python
exec(open(r"C:/path/to/fnkRigTool/test/test_run.py", encoding="utf-8").read())
```

---

## Maya Integration (.mod Support)

To install this tool as a Maya module:

1. Place this repo (or clone it) into:
   ```
   C:/Users/<you>/Documents/maya/modules/fnkRigTool/1.0.0/
   ```

2. Ensure the `.mod` file exists at:
   ```
   C:/Users/<you>/Documents/maya/modules/fnkRigTool/1.0.0.mod
   ```

3. Example `.mod` content:
   ```
   + fnkRigTool 1.0.0 C:/Users/<you>/Documents/maya/modules/fnkRigTool/1.0.0
   PYTHONPATH += C:/Users/<you>/Documents/maya/modules/fnkRigTool/1.0.0
   ```

4. Restart Maya and run:
   ```python
   import main
   main.launch_autorig_tool()
   ```

---

## ✨ Features

- Visual rig module browser with icon previews
- Build, edit, publish `.ma` rig modules
- Auto-versioned publishing workflow
- On-the-fly guide rebuilding
- Namespace duplication with preserved links
- UI built in PySide6 (Maya 2025 native)
- Full `.mod` install support for clean integration


![windTool Preview](ressources/preview/demoFnkRigTool.gif)

---

## 🗂 Folder Layout

```
fnkRigTool/
├── core/                  # actions, constants
├── ui/                    # PySide6 UI (main/edit/build)
├── resources/
│   ├── icons/             # SVG icons
│   └── preview/           # JPG preview renders
├── data/
│   └── modules/           # .ma rig building blocks
├── test/
│   └── test_run.py        # hot-reload launcher
├── run.py                 # launcher entry point
├── module/
│   ├── 1.0.0/             # duplicate of repo for Maya .mod compatibility
│   └── 1.0.0.mod
├── LICENSE
└── README.md
```

---

## 🛠 Requirements

- Maya 2025+
- Python 3.10 (built-in)
- PySide6 (bundled with Maya)
- Frankenstein Tool logic by [Guillaume Baratte](https://github.com/BaratteG)

---

## 🧪 Dev Tip

To reload and run cleanly from Maya during development:
```python
exec(open(r"C:/your/workspace/fnkRigTool/test/test_run.py", encoding="utf-8").read())
```

---

## 📄 License

MIT License

---

## 🙏 Credits

Created by **Julien Miternique**

Special thanks to:
- [**Emilien Blancquaert**](https://www.linkedin.com/in/emilien-blancquaert/) – Participation to the rig module development
- **Guillaume Baratte** – Frankenstein Tool foundation and mentorship

For support, bugs, or questions:  
[LinkedIn](https://www.linkedin.com/in/julien-miternique/) • julienmiternique.pro@gmail.com
