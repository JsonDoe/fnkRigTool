# AutoRig Tool for Maya

A modular, UI-driven autorigging system for Autodesk Maya 2025+.

Designed for technical artists and riggers, this tool provides a clean and extensible interface to:
- Build and edit rig modules
- Publish versioned `.ma` files
- Duplicate modules under new namespaces
- Freeze and clean up namespaces for export

---

## 📂 Project Structure

```
fnkRigTool/
├── core/                # Rig logic and utilities
│   ├── actions.py
│   ├── constants.py
│   └── ...
├── ui/                  # All PySide6 UI logic
│   ├── main_ui.py
│   ├── build_ui.py
│   ├── edit_ui.py
│   └── ...
├── modules/             # Your rig module folders go here
│   └── spine/
│       └── publish/
├── utils/
│   ├── icons/           # SVG/PNG icons for the UI
│   └── preview/         # Preview images for each module
├── fnkRigTool.mod       # Maya .mod file for module loading
├── main.py              # Entry point to launch the tool
└── testInMaya.py        # Dev script to reload and run the UI in Maya
```

---

## 🚀 Quick Start

### 🧩 Option 1: Script Editor
```python
import fnkRigTool.main as rig_main
rig_main.launch_autorig_tool()
```

### 🧩 Option 2: Shelf Button
Assign this to a custom shelf:
```python
import fnkRigTool.main as rig_main
rig_main.launch_autorig_tool()
```

### 🧩 Option 3: `main.py`
To run directly from the file:
```python
import main
main.launch_autorig_tool()
```

---

## 🔌 Maya Integration (.mod File)

To auto-load the tool as a module:

1. Place `fnkRigTool` folder in:
   ```
   C:/Users/<username>/Documents/maya/modules/fnkRigTool/
   ```

2. Create a `.mod` file inside that folder:

   ```ini
   + fnkRigTool 1.0 C:/Users/<username>/Documents/maya/modules/fnkRigTool
   PYTHONPATH+:=fnkRigTool
   ```

3. Restart Maya → You can now import it via:
   ```python
   import fnkRigTool.main as rig_main
   rig_main.launch_autorig_tool()
   ```

---

## ✨ Features

- ✅ Visual module browser with image previews
- ✅ Build modules using .ma version files
- ✅ Edit and rebuild guides on-the-fly
- ✅ Duplicate modules with preserved inputs
- ✅ Publish `.ma` versions with auto-increment
- ✅ Freeze and flatten namespaces for export
- ✅ Styled PySide6 UI with icons, tooltips, and grouping

---

## 🖼 UI Preview

*(Include a screenshot here if desired)*  
![UI Preview](docs/ui_preview.jpg)

---

## 🛠 Dependencies

- Maya 2025+  
- Python 3.10+ (as used in Maya 2025)  
- PySide6 (comes with Maya 2025)

---

## 👨‍💻 Development Notes

### To reload and test in Maya:
Use `testInMaya.py` which:
- Adds your workspace path
- Reloads all UI + logic modules
- Launches the UI

```python
import testInMaya
```

---

## 📄 License

MIT License (or insert your studio's custom license)

---

## 📬 Contact

Developed by **[Your Name or Studio]**  
For support, bug reports or contributions, please contact: your.email@domain.com