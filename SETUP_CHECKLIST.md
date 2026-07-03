# ✅ Repository Setup Checklist

Complete these steps to make your GitHub profile fully ready:

## 🔧 Step 1: Enable GitHub Actions

1. Go to [Repository Settings → Actions](https://github.com/riginoommen/riginoommen/settings/actions)
2. Under **"Actions permissions"**:
   - ✅ Select **"Allow all actions and reusable workflows"**
3. Under **"Workflow permissions"**:
   - ✅ Select **"Read and write permissions"**
   - ✅ Check **"Allow GitHub Actions to create and approve pull requests"**
4. Click **"Save"**

---

## 🚀 Step 2: Trigger Workflows Manually (First Time)

Go to [Actions Tab](https://github.com/riginoommen/riginoommen/actions)

Run each workflow once:

### 2.1 Latest Blog Posts
- Click **"Latest Blog Posts"** → **"Run workflow"** → **"Run workflow"**
- Wait 30 seconds, check README

### 2.2 GraphQL Foundation Blog Feed
- Click **"GraphQL Foundation Blog Feed"** → **"Run workflow"** → **"Run workflow"**
- Wait 30 seconds, check README

### 2.3 Update GitHub Activity
- Click **"Update GitHub Activity"** → **"Run workflow"** → **"Run workflow"**
- Wait 30 seconds, check README

### 2.4 Check Links
- Click **"Check Links"** → **"Run workflow"** → **"Run workflow"**
- Should complete with green check

### 2.5 Waka Readme (WakaTime Stats)
- This requires WakaTime API key (optional)
- See Step 4 if you want coding stats

---

## 📋 Step 3: Review & Merge Any Pull Requests

Check [Pull Requests](https://github.com/riginoommen/riginoommen/pulls):

### Dependabot PRs
- ✅ Review Dependabot updates
- ✅ Merge them to keep actions up-to-date
- OR: Auto-merge Dependabot PRs (see Step 5)

### Bot-Created PRs
- Blog post updates (blog-bot, graphql-bot)
- ✅ Review and merge
- Future updates will commit directly (no PRs)

---

## 🔑 Step 4: Optional - WakaTime Integration

If you want coding time statistics:

1. Sign up at [WakaTime](https://wakatime.com/)
2. Install WakaTime plugin in your IDE (VS Code, IntelliJ, etc.)
3. Get your API key from [WakaTime Settings](https://wakatime.com/settings/account)
4. Add to GitHub Secrets:
   - Go to [Repository Settings → Secrets](https://github.com/riginoommen/riginoommen/settings/secrets/actions)
   - Click **"New repository secret"**
   - Name: `WAKATIME_API_KEY`
   - Value: Your WakaTime API key
   - Click **"Add secret"**
5. Run **"Waka Readme"** workflow

**OR** Remove WakaTime workflow if you don't need it:
```bash
# Delete the file
rm .github/workflows/waka-action.yml
git add .
git commit -m "Remove WakaTime workflow"
git push origin main
```

---

## 🤖 Step 5: Enable Dependabot Auto-Merge (Optional)

To automatically merge Dependabot PRs:

1. Go to [Repository Settings → Code security and analysis](https://github.com/riginoommen/riginoommen/settings/security_analysis)
2. Under **"Dependabot"**:
   - ✅ Enable **"Dependabot security updates"**
3. Go to [Repository Settings → General](https://github.com/riginoommen/riginoommen/settings)
4. Under **"Pull Requests"**:
   - ✅ Check **"Allow auto-merge"**

Then add this workflow:

```yaml
# .github/workflows/dependabot-auto-merge.yml
name: Dependabot Auto-Merge
on: pull_request

permissions:
  pull-requests: write
  contents: write

jobs:
  dependabot:
    runs-on: ubuntu-latest
    if: github.actor == 'dependabot[bot]'
    steps:
      - name: Dependabot metadata
        id: metadata
        uses: dependabot/fetch-metadata@v1
        with:
          github-token: "${{ secrets.GITHUB_TOKEN }}"
      
      - name: Enable auto-merge for Dependabot PRs
        run: gh pr merge --auto --squash "$PR_URL"
        env:
          PR_URL: ${{github.event.pull_request.html_url}}
          GITHUB_TOKEN: ${{secrets.GITHUB_TOKEN}}
```

---

## 📊 Step 6: Verify Everything Works

### Check Your Profile
Visit: https://github.com/riginoommen

You should see:
- ✅ Blog posts populated (if you have Medium articles)
- ✅ GraphQL Foundation blog posts
- ✅ Recent GitHub activity
- ✅ Beautiful profile with all sections

### Check Workflows Status
Visit: https://github.com/riginoommen/riginoommen/actions

All should show:
- ✅ Green checkmarks (successful runs)
- OR: Scheduled for next run

---

## 🎯 Step 7: Optional Enhancements

### Remove WakaTime if not needed
```bash
cd /tmp/profile-repo
rm .github/workflows/waka-action.yml
git add .
git commit -m "🗑️ Remove WakaTime workflow (not needed)"
git push origin main
```

### Add Status Badges (Optional)
Add to top of README:

```markdown
![Profile Views](https://komarev.com/ghpvc/?username=riginoommen&style=flat-square&color=blue)
![Blog Workflow](https://github.com/riginoommen/riginoommen/workflows/Latest%20Blog%20Posts/badge.svg)
![Links](https://github.com/riginoommen/riginoommen/workflows/Check%20Links/badge.svg)
```

### Pin This Repository
1. Go to [Your Profile](https://github.com/riginoommen)
2. Click **"Customize your pins"**
3. ✅ Select **riginoommen/riginoommen**
4. Click **"Save pins"**

---

## 🎨 Step 8: Customize (Optional)

### Change Update Frequency
Edit workflow files in `.github/workflows/`:

```yaml
# Daily at midnight
- cron: '0 0 * * *'

# Change to every 12 hours:
- cron: '0 */12 * * *'

# Change to weekly (Monday):
- cron: '0 0 * * 1'
```

### Add More Blog Sources
Edit `blog-post-workflow.yml`:

```yaml
feed_list: "https://medium.com/feed/@riginoommen,https://dev.to/feed/riginoommen"
```

---

## 🆘 Troubleshooting

### Workflows Not Running?
1. Check Actions are enabled in settings
2. Check workflow permissions are set to "Read and write"
3. Manually trigger with "Run workflow" button

### Blog Posts Not Showing?
1. Verify Medium RSS feed: https://medium.com/feed/@riginoommen
2. Check workflow logs in Actions tab
3. Make sure you have published articles on Medium

### Pull Requests Piling Up?
1. Review and merge bot PRs
2. Enable auto-merge (Step 5)
3. Or disable creating PRs in workflow (change to direct commit)

### Links Failing?
1. Check link-checker workflow logs
2. Fix or exclude broken links
3. Re-run workflow

---

## ✅ Final Checklist

- [ ] GitHub Actions enabled
- [ ] Workflow permissions set to "Read and write"
- [ ] All workflows triggered manually once
- [ ] Pull requests reviewed and merged
- [ ] Profile displays all sections correctly
- [ ] (Optional) WakaTime configured
- [ ] (Optional) Dependabot auto-merge enabled
- [ ] (Optional) Repository pinned to profile
- [ ] (Optional) Status badges added

---

## 🎉 You're All Set!

Your profile will now:
- ✅ Update blog posts daily
- ✅ Show GitHub activity every 6 hours
- ✅ Check links weekly
- ✅ Auto-update dependencies
- ✅ Maintain itself automatically!

**Profile URL**: https://github.com/riginoommen

---

Need help? Check:
- [GitHub Actions Docs](https://docs.github.com/en/actions)
- [Workflow Files](.github/workflows/README.md)
- Issues tab if something's not working
