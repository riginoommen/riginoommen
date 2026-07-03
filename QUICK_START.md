# 🚀 Quick Start - Get Your Profile Working in 5 Minutes!

## ⚡ Fast Track Setup

### 1️⃣ Enable GitHub Actions (2 minutes)

**Go to:** https://github.com/riginoommen/riginoommen/settings/actions

**Set these 3 things:**

✅ **Actions permissions:** "Allow all actions and reusable workflows"

✅ **Workflow permissions:** Select "Read and write permissions"

✅ **Check:** "Allow GitHub Actions to create and approve pull requests"

**Click SAVE**

---

### 2️⃣ Enable Auto-Merge (1 minute)

**Go to:** https://github.com/riginoommen/riginoommen/settings

**Under "Pull Requests" section:**

✅ **Check:** "Allow auto-merge"

**Click SAVE**

---

### 3️⃣ Run Workflows Manually (2 minutes)

**Go to:** https://github.com/riginoommen/riginoommen/actions

**Click and run each of these (4 workflows):**

1. ✅ "Latest Blog Posts" → Click "Run workflow" → "Run workflow"
2. ✅ "GraphQL Foundation Blog Feed" → Click "Run workflow" → "Run workflow"  
3. ✅ "Update GitHub Activity" → Click "Run workflow" → "Run workflow"
4. ✅ "Check Links" → Click "Run workflow" → "Run workflow"

Wait ~30 seconds between each.

---

### 4️⃣ Merge Any Pull Requests (1 minute)

**Go to:** https://github.com/riginoommen/riginoommen/pulls

If you see any PRs from bots:
- ✅ Review them
- ✅ Click "Merge pull request"
- ✅ Confirm merge

---

### 5️⃣ Verify Your Profile! (30 seconds)

**Go to:** https://github.com/riginoommen

You should now see:
- ✅ Latest blog posts from Medium
- ✅ GraphQL Foundation blog posts
- ✅ Recent GitHub activity
- ✅ All sections populated!

---

## 🎉 Done! Your Profile Will Now:

- 📝 Update blog posts daily
- 🚀 Update GraphQL posts daily
- ⚡ Update activity every 6 hours
- 🔗 Check links weekly
- 🤖 Auto-merge dependency updates

---

## 🐛 Troubleshooting

### Blog posts not showing?

Run this to verify feeds work:
```bash
bash .github/verify-feeds.sh
```

### Workflows failed?

Check the logs:
1. Go to Actions tab
2. Click the failed workflow
3. Check the error message

Common fixes:
- Make sure permissions are set correctly
- Re-run the workflow
- Check if you have published Medium articles

### Still stuck?

Check the full guide: [SETUP_CHECKLIST.md](SETUP_CHECKLIST.md)

---

**That's it! 5 minutes and you're done! 🚀**
