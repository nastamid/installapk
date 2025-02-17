# 🚀 Install and Run APK Script

A simple **Bash script** to automate the process of installing the most recently downloaded APK file from your `Downloads` folder onto an Android device using **ADB**. After installation, the app is automatically launched.

---

## 📝 Features
✅ Automatically picks the **latest APK** from `~/Downloads` folder

✅ Installs the APK on a **connected Android device**

✅ Launches the app after installation

✅ Supports **ADB install flags** (e.g., `-r` to retain data)

---

## ⚙️ Prerequisites
- **ADB (Android Debug Bridge)** installed and accessible via terminal
- Android device connected and **authorized** for ADB

---

## 🛠️ Installation
### 1. Clone this repository or copy the `installAndRun.sh` script to your local system
```bash
git clone https://github.com/yourusername/your-repo.git
cd your-repo
```

### 2. Make the script executable
```bash
chmod +x installAndRun.sh
```

### 3. (Optional) Move it to a directory in your `PATH` for global access
```bash
sudo mv installAndRun.sh /usr/local/bin/installAndRun
```

---

## ▶️ Usage
```bash
./installAndRun.sh [adb install options]
```

### 🧑‍💻 Examples
#### Basic usage (install and launch the latest APK):
```bash
./installAndRun.sh
```
#### Retain app data when reinstalling:
```bash
./installAndRun.sh -r
```

---

## ⚙️ Customization
The script is configured to launch an app with the package name:
```bash
com.yourstudio.yourapp
```
If you want to launch a different app, update this section in the script:
```bash
adb shell monkey -p com.yourstudio.yourapp -c android.intent.category.LAUNCHER 1
```

---

## 📜 License
This project is licensed under the **MIT License**.

---

## 🧑‍💻 Author
**Your Name**  
[LinkedIn Profile](https://www.linkedin.com/in/nikoloz-astamidze/)
