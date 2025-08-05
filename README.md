# Robot-FrameWork-Practice-new-Test-Cases
# 🧪 Robot Framework Automation Project

This project automates test cases using **Robot Framework** with **SeleniumLibrary** (or any other library you use).  
It is organized for scalability, modularity, and clarity.



## ⚙️ Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/gaurav150/Robot-FrameWork-Practice-new-Test-Cases.git

cd yourproject
```

### 2. Create a Virtual Environment (Optional but Recommended)

```bash
python3 -m venv .venv
source .venv/bin/activate     # macOS/Linux
# OR
.venv\Scripts\activate        # Windows
```

### 3. Install Dependencies

```bash
pip3 install -r requirements.txt
```
---

## ▶️ Running Tests

### Run All Tests:

```bash
robot tests/
```

### Run a Specific Test File:

```bash
robot tests/login_tests.robot
```

### Run Tests with Custom Output Directory:

```bash
robot --outputdir results tests/
```

### Run with Tags (Optional):

```bash
robot -i smoke tests/
```

---

## 📊 Test Results

After test execution, you can find these files in the `results/` folder:

- `report.html` – High-level test summary  
- `log.html` – Detailed step-by-step log  
- `output.xml` – Robot standard output  

Open `report.html` in your browser to view results.

---

## 🔄 Test Flow (Example)

1. Launch browser and open login page  
2. Perform login with valid credentials  
3. Navigate through different sections  
4. Validate success messages and UI elements  
5. Logout and close browser  

---

## 🧾 Sample Command Summary

```bash
robot tests/checkout_tests.robot
robot -d results tests/
robot -i regression tests/
robot --loglevel DEBUG --test "Login Authentication" Tests/Login_Page.robot
```

## ▶️ Formatting our robot files with commands
```bash
robocop format --check --overwrite .
```
---

## 🧩 Libraries Used

- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)
- [WebDriverManager](https://github.com/SergeyPirogov/webdrivermanager)

---

## 🙋‍♂️ Maintainer

Gaurav Kumar  
Email: gauravara55@gmail.com  
