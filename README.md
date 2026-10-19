# Asma Batool — Personal Academic & Professional Portfolio

> **International Relations Researcher | Policy & Social Impact Professional**  
> MPhil in International Relations, National Defence University (NDU), Islamabad  
> Live Website URL: **[https://asmabatoolab-gif.github.io/](https://asmabatoolab-gif.github.io/)**

---

## 🌟 Overview

This repository contains the complete, production-ready personal portfolio website for **Asma Batool**, designed specifically for an academic researcher, policy writer, and non-governmental organisation (NGO) professional.

The website is crafted with a minimalist, high-contrast academic aesthetic featuring **deep navy blue (`#0a192f`)**, **warm off-white (`#f8fafc`)**, and **muted teal accents (`#0d9488`)**. It incorporates semantic HTML5, accessible ARIA roles, classical typography, responsive mobile navigation, interactive publication filtering, and a built-in CV download architecture.

---

## 📁 Repository Structure

```text
asma-batool-portfolio/
│
├── .github/
│   └── workflows/
│       └── deploy.yml              # Official GitHub Actions deployment to GitHub Pages
│
├── assets/
│   ├── css/
│   │   └── style.css               # Clean academic design system (Navy/Ivory/Teal)
│   ├── js/
│   │   ├── portfolioData.js        # Centralized editable content (profile, pubs, cv)
│   │   └── main.js                 # Interactive controller (filters, navigation, mailto)
│   ├── images/
│   │   ├── avatar-placeholder.svg  # Professional researcher portrait placeholder
│   │   ├── favicon.svg             # Academic monogram browser icon (AB)
│   │   └── og-preview.svg          # High-resolution social share card (1200x630)
│   └── docs/
│       └── Asma-Batool-CV.pdf      # Valid, formatted PDF curriculum vitae
│
├── index.html                      # Complete semantic homepage with all sections
├── 404.html                        # Branded, friendly 404 error page
├── .nojekyll                       # Ensures GitHub Pages serves all assets directly
├── preview.ps1                     # Built-in zero-dependency Windows local server
├── run_preview.bat                 # 1-Click launcher to view site locally on Windows
└── README.md                       # Complete guide for setup, deployment, & editing
```

---

## 💻 How to View the Website Locally on Your Computer

You do **not** need to install Node.js, npm, or Git to preview and edit this website on your computer.

### Option 1: One-Click Launcher (Recommended)
1. Double-click the **`run_preview.bat`** file in this folder.
2. A window will open, and your default web browser (Chrome, Edge, Firefox) will automatically launch:  
   👉 **`http://localhost:8080`**
3. To stop the server when you are done, simply close the black command window.

### Option 2: Direct File Open
You can also right-click **`index.html`** → **Open with** → **Google Chrome** (or Microsoft Edge).

---

## 🚀 Step-by-Step Guide: Deploying to GitHub Pages

Since your repository is named exactly **`asmabatoolab-gif.github.io`**, GitHub will host your website at the root web address:  
👉 **`https://asmabatoolab-gif.github.io/`**

### Step 1: Create Your GitHub Account
1. Go to **[https://github.com/signup](https://github.com/signup)**.
2. Enter your email address and create a strong password.
3. Choose your username (e.g., `asmabatoolab-gif`).
4. Complete the verification puzzle and confirm the code sent to your email.

---

### Step 2: Create Your Special GitHub Pages Repository
1. Log in to **[GitHub](https://github.com/)**.
2. In the top right corner, click the **`+`** (plus) icon and select **New repository**.
3. In the **Repository name** box, type **exactly**:
   ```
   asmabatoolab-gif.github.io
   ```
   *(Important: If your username is `asmabatoolab-gif`, the repository name must be `asmabatoolab-gif.github.io` in lowercase or matching case. This tells GitHub it is your personal website).*
4. Select **Public**.
5. Leave "Add a README file", ".gitignore", and "license" **unchecked** (we already have complete files ready).
6. Click the green **Create repository** button.

---

### Step 3: Upload Your Website Files to GitHub

Choose whichever method you are most comfortable with:

#### Method A: Easiest Web Browser Upload (No Terminal / No Git Needed!)
1. On your newly created repository page on GitHub, click the link that says:  
   **"uploading an existing file"**.
2. Open the `asma-batool-portfolio` folder on your computer.
3. Select **all files and folders** inside `asma-batool-portfolio`:
   - `index.html`
   - `404.html`
   - `.nojekyll`
   - `README.md`
   - `run_preview.bat`
   - `preview.ps1`
   - `assets/` folder
   - `.github/` folder
4. Drag and drop them into the GitHub browser window.
5. In the "Commit changes" box at the bottom, type: `Initial portfolio publication`.
6. Click the green **Commit changes** button. GitHub will save all your files.

#### Method B: Using Git Command Line (If Git is installed)
If you install Git on your computer, open PowerShell or Terminal in the project folder and run:
```powershell
git init
git add .
git commit -m "Initial portfolio release for Asma Batool"
git branch -M main
git remote add origin https://github.com/asmabatoolab-gif/asmabatoolab-gif.github.io.git
git push -u origin main
```

---

### Step 4: Enable GitHub Pages & GitHub Actions
1. In your GitHub repository, click on the **Settings** tab (the gear icon near the top right).
2. On the left sidebar menu, click on **Pages** (under the "Code and automation" section).
3. Under **Build and deployment**:
   - For **Source**, select **GitHub Actions** (recommended, since we included `.github/workflows/deploy.yml`).
   - *Alternative:* You can also select **Deploy from a branch**, choose branch **`main`**, folder **`/ (root)`**, and click **Save**. Both options work smoothly!
4. Click on the **Actions** tab at the top of your repository to watch the deployment run. You will see a green checkmark `✔` when it completes (usually 30–60 seconds).
5. Visit your live website:  
   👉 **`https://asmabatoolab-gif.github.io/`**

---

## ✏️ How to Edit & Customize Your Portfolio Content

All of your portfolio data is centralized in **`assets/js/portfolioData.js`**. You do not need to rewrite complex HTML to update your information!

### 1. How to Replace the Portrait Photo with Your Real Picture
1. Choose a high-resolution, professional portrait photo (JPG or PNG).
2. Rename your picture file to:  
   **`asma-batool.jpg`**
3. Copy or save it into the **`assets/images/`** folder.
4. Open **`index.html`** in Notepad or VS Code, search for line 217, and change:
   ```html
   <img src="assets/images/avatar-placeholder.svg" ...>
   ```
   to:
   ```html
   <img src="assets/images/asma-batool.jpg" ...>
   ```
5. Save the file. When you refresh or upload to GitHub, your photograph will appear!

---

### 2. How to Update Your CV (Curriculum Vitae) PDF
1. Export or save your updated CV as a PDF document.
2. Name the file exactly:  
   **`Asma-Batool-CV.pdf`**
3. Replace the existing file in **`assets/docs/`** with your new PDF.
4. Both the **"Download My CV"** buttons on the homepage and header will automatically serve your latest PDF!

---

### 3. How to Add or Edit Publications
Open **`assets/js/portfolioData.js`** in any text editor. Under the `publications:` array, you will see entries like:

```javascript
{
  id: "pub-book-chapter-2022",
  title: "Pakistan-US Relations and Indian Factor",
  type: "Book Chapter",
  category: "academic", // "academic", "policy", or "opinion"
  publisher: "Nobel Academic Publishing",
  bookOrJournal: "South Asia: State, Society and Politics",
  year: 2022,
  description: "An in-depth scholarly chapter analyzing...",
  url: "https://link-to-publisher-or-paper.com",
}
```
Simply edit the text, add URLs, or copy-paste a block to add a new publication.

---

### 4. How to Update Your Email and Social Links
In **`assets/js/portfolioData.js`**, update:
- `email: "your-actual-email@gmail.com"`
- `url:` under `LinkedIn`, `Google Scholar`, `ResearchGate`, or `ORCID`.

---

## 🔒 Security & Privacy Notice
- This website is purely static; it requires **no backend**, **no database**, and **no server maintenance**.
- There are **no secret keys, tokens, or passwords** stored in this repository.
- The contact form generates a safe `mailto:` link opening the visitor's email client directly, protecting you from spam bot scrapers and ensuring zero hosting costs.

---

## 📜 Academic Attribution & License
© 2026 Asma Batool. All academic writings, publications, and descriptive texts remain the intellectual property of Asma Batool.
The website codebase and design system are provided under the MIT License.
