# 🚀 MAY17 — Node.js Project with CI/CD

A Node.js + Express project connected to GitHub with a fully automated CI/CD pipeline using GitHub Actions.

---

## 📁 Project Structure

```
MAY17/
├── .github/
│   └── workflows/
│       └── ci-cd.yml        ← GitHub Actions CI/CD pipeline
├── src/
│   └── index.js             ← Main Express server
├── tests/
│   └── app.test.js          ← Jest test suite
├── .env.example             ← Environment variable template
├── .eslintrc.json           ← ESLint config
├── .gitignore
├── package.json
└── README.md
```

---

## ⚙️ Local Setup

```bash
# 1. Clone the repo
git clone https://github.com/Tarun2299/MAY17.git
cd MAY17

# 2. Install dependencies
npm install

# 3. Copy env file
cp .env.example .env

# 4. Run locally
npm run dev        # with hot reload (nodemon)
# or
npm start          # normal start
```

Server runs at: **http://localhost:3000**

---

## 🌐 API Endpoints

| Method | Route        | Description              |
|--------|--------------|--------------------------|
| GET    | `/`          | Welcome message          |
| GET    | `/health`    | Health check             |
| GET    | `/api/hello` | Hello with optional name |

**Example:**
```
GET /api/hello?name=Tarun
→ { "message": "Hello, Tarun! Welcome to MAY17." }
```

---

## 🧪 Run Tests

```bash
npm test
```

---

## 🚀 CI/CD Pipeline — How It Works

Every time you **`git push`** to GitHub, the pipeline runs automatically:

```
Push to GitHub
     │
     ▼
┌─────────────┐    ┌─────────────┐
│  🧪 Test    │    │  🔍 Lint    │  ← Run in parallel
└──────┬──────┘    └──────┬──────┘
       └────────┬──────────┘
                ▼
         ┌─────────────┐
         │  🏗️ Build   │  ← Only if tests pass
         └──────┬──────┘
                ▼
         ┌─────────────┐
         │  🚢 Deploy  │  ← Only on push to `main`
         └─────────────┘
```

### Pipeline Jobs:
| Job | Trigger | What it does |
|-----|---------|-------------|
| **Test** | Every push/PR | Runs Jest tests on Node 18 & 20 |
| **Lint** | Every push/PR | Checks code style with ESLint |
| **Build** | After test + lint pass | Builds the project |
| **Deploy** | Push to `main` only | Deploys to production |

---

## 🔧 Push Your Code (Step-by-Step)

```bash
# First time setup (run inside the project folder)
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/Tarun2299/MAY17.git
git push -u origin main
```

**After that, every push triggers the pipeline automatically:**
```bash
git add .
git commit -m "your message"
git push
```

Then go to **GitHub → Actions tab** to watch the pipeline run live! ✅

---

## 👤 Author

**Tarun2299** — [github.com/Tarun2299](https://github.com/Tarun2299)
