# 🤖 GitHub Profile Automation Setup

## ✅ Implemented Automations

**5 automated workflows** to keep your profile fresh:

### 1. 📝 Medium Blog Posts (Daily)
**File**: `.github/workflows/blog-post-workflow.yml`
**Runs**: Every day at midnight UTC
**Updates**: Latest 5 Medium articles automatically

### 2. 🔗 Link Checker (Weekly)
**File**: `.github/workflows/link-checker.yml`
**Runs**: Every Sunday
**Checks**: All markdown links, creates issues if broken

### 3. ⚡ GitHub Activity (Every 6 hours)
**File**: `.github/workflows/github-activity.yml`
**Runs**: 4 times daily
**Shows**: Latest 10 GitHub activities (PRs, issues, commits)

### 4. 🚀 GraphQL Foundation Blog (Daily)
**File**: `.github/workflows/graphql-feed.yml`
**Runs**: Every day at 6 AM UTC
**Updates**: Latest 3 GraphQL Foundation blog posts

### 5. ⬆️ Dependabot (Weekly)
**File**: `.github/dependabot.yml`
**Runs**: Weekly
**Updates**: GitHub Actions versions automatically

---

## 🚀 Quick Start (3 Steps)

### Step 1: Enable GitHub Actions
1. Go to your repository settings
2. Navigate to **Actions** → **General**
3. Under "Workflow permissions", select:
   - ✅ **Read and write permissions**
   - ✅ **Allow GitHub Actions to create and approve pull requests**
4. Click **Save**

### Step 2: Verify Placeholders in README
The README.md already has these placeholders:

```markdown
<!-- BLOG-POST-LIST:START -->
<!-- BLOG-POST-LIST:END -->

<!-- GRAPHQL-BLOG:START -->
<!-- GRAPHQL-BLOG:END -->

<!--START_SECTION:activity-->
<!--END_SECTION:activity-->
```

These will be automatically populated by the workflows.

### Step 3: Trigger First Run
You can manually trigger any workflow:
1. Go to **Actions** tab in your repository
2. Select a workflow (e.g., "Latest Blog Posts")
3. Click **Run workflow** → **Run workflow**
4. Wait ~30 seconds and check the README!

---

## 📋 What Each Automation Does

### 📝 Blog Post Workflow

**What it updates**:
```markdown
<!-- BLOG-POST-LIST:START -->
- [Your Latest Article Title](https://medium.com/...)
- [Another Article](https://medium.com/...)
...
<!-- BLOG-POST-LIST:END -->
```

**Customization options** (edit `.github/workflows/blog-post-workflow.yml`):
- `max_post_count`: Change from 5 to any number
- `template`: Customize how posts are displayed
- `cron`: Change schedule (default: daily)

### 🔗 Link Checker

**What it does**:
- Scans all markdown files for links
- Verifies each URL is accessible
- Creates GitHub issue if broken links found
- Runs automatically every Sunday

**Manual check**: 
```bash
# Run locally (optional)
npm install -g lychee-cli
lychee README.md
```

### ⚡ GitHub Activity

**What it shows**:
```markdown
<!--START_SECTION:activity-->
1. 🎉 Merged PR #123 in riginoommen/repo
2. 💪 Opened PR #456 in org/project
3. ❗️ Opened issue #789 in another/repo
...
<!--END_SECTION:activity-->
```

**Customization**:
- `MAX_LINES`: Change from 10 to show more/fewer activities

### 🚀 GraphQL Blog Feed

**What it updates**:
```markdown
<!-- GRAPHQL-BLOG:START -->
- [GraphQL Foundation Announcement](https://graphql.org/blog/...)
- [New GraphQL Features](https://graphql.org/blog/...)
...
<!-- GRAPHQL-BLOG:END -->
```

**Perfect for**: Showing your engagement with GraphQL community as an Ambassador!

### ⬆️ Dependabot

**What it does**:
- Automatically checks for GitHub Action updates
- Creates PRs to update action versions
- Keeps your automations secure and up-to-date

**No setup needed** - works automatically!

---

## 🎨 Customization Ideas

### Change Update Frequency

Edit the `cron` schedule in any workflow file:

```yaml
schedule:
  - cron: '0 0 * * *'  # Daily at midnight
  # Change to:
  - cron: '0 */12 * * *'  # Every 12 hours
  - cron: '0 0 * * 1'  # Every Monday
  - cron: '0 6 * * *'  # Daily at 6 AM
```

**Cron Helper**: https://crontab.guru/

### Add More Blog Sources

Edit `blog-post-workflow.yml`:

```yaml
feed_list: "https://medium.com/feed/@riginoommen,https://dev.to/feed/riginoommen"
```

### Change Activity Display

Edit `github-activity.yml`:

```yaml
with:
  MAX_LINES: 15  # Show more activities
  COMMIT_MSG: '🎯 Updated activity'
```

---

## 🔧 Troubleshooting

### Workflow Not Running?

1. **Check Actions are enabled**:
   - Settings → Actions → General → Enable

2. **Check workflow permissions**:
   - Need "Read and write permissions"

3. **Manually trigger**:
   - Actions tab → Select workflow → Run workflow

### Blog Posts Not Updating?

1. **Verify Medium RSS feed**:
   - Visit: https://medium.com/feed/@riginoommen
   - Should show XML content

2. **Check placeholder exists**:
   - README must have `<!-- BLOG-POST-LIST:START -->`

3. **View workflow logs**:
   - Actions tab → Latest Blog Posts → Click run → View logs

### Link Checker Creating Too Many Issues?

Edit `link-checker.yml`:

```yaml
with:
  args: --verbose --no-progress --exclude 'example.com' './**/*.md'
  fail: false  # Don't fail on broken links
```

---

## 📊 Monitoring Your Automations

### View All Workflow Runs
**Repository** → **Actions** tab

Shows:
- ✅ Successful runs (green)
- ❌ Failed runs (red)
- 🟡 In progress (yellow)

### Get Notified
1. **Watch your repository**: Star icon → Custom → Actions
2. **Email notifications**: GitHub will email you on failures

### Workflow Status Badges (Optional)

Add to README:

```markdown
![Blog Posts](https://github.com/riginoommen/riginoommen/workflows/Latest%20Blog%20Posts/badge.svg)
![Links](https://github.com/riginoommen/riginoommen/workflows/Check%20Links/badge.svg)
```

---

## 🎯 Advanced Automations (Future Ideas)

### 1. Auto-Generate Speaking Calendar
```yaml
# Fetch from Sessionize API
# Display upcoming talks
```

### 2. Twitter Feed Integration
```yaml
# Show latest tweets
# Requires Twitter API key
```

### 3. Spotify Now Playing
```yaml
# Display currently playing song
# Requires Spotify API
```

### 4. Stack Overflow Stats
```yaml
# Show SO reputation
# Fetch from Stack Exchange API
```

### 5. Conference Badge Collection
```yaml
# Auto-collect conference badges
# Display as image grid
```

Want any of these? Let me know!

---

## ✅ Checklist

After pushing these files:

- [ ] Enable GitHub Actions in repository settings
- [ ] Set workflow permissions to "Read and write"
- [ ] Manually trigger "Latest Blog Posts" workflow
- [ ] Manually trigger "GitHub Activity" workflow
- [ ] Verify README updates automatically
- [ ] Check that WakaTime workflow still works
- [ ] Star your own repo to test activity tracking! ⭐

---

## 🆘 Need Help?

- **GitHub Actions Docs**: https://docs.github.com/en/actions
- **Blog Post Workflow**: https://github.com/gautamkrishnar/blog-post-workflow
- **Activity Workflow**: https://github.com/jamesgeorge007/github-activity-readme
- **Link Checker**: https://github.com/lycheeverse/lychee-action

---

## 🚀 What's Next?

Once these are working:
1. ✅ Profile auto-updates daily
2. ✅ Broken links caught automatically
3. ✅ Recent activity showcased
4. ✅ Blog content fresh
5. ✅ GraphQL community engagement visible

**Your profile will maintain itself!** 🎉
