# GitHub Profile Workflows

## Active Workflows

| Workflow | Schedule | Purpose |
|----------|----------|---------|
| `blog-post-workflow.yml` | Daily (00:00 UTC) | Updates Medium blog posts |
| `graphql-feed.yml` | Daily (06:00 UTC) | Updates GraphQL blog posts |
| `github-activity.yml` | Every 6 hours | Shows recent GitHub activity |
| `link-checker.yml` | Weekly (Sunday) | Checks for broken links |

## Quick Actions

**Manually trigger any workflow:**
1. Go to [Actions tab](https://github.com/riginoommen/riginoommen/actions)
2. Select workflow
3. Click "Run workflow"

**View workflow runs:**
- [Actions Dashboard](https://github.com/riginoommen/riginoommen/actions)

## Configuration

**Permissions required:**
- ✅ Read and write permissions
- ✅ Allow GitHub Actions to create PRs

**Set in:** Repository Settings → Actions → General → Workflow permissions

---

## Setup

**Enable workflows:**
1. Repository Settings → Actions → General
2. Workflow permissions: **Read and write**
3. ✅ Allow GitHub Actions to create PRs
4. Save

**First run:**
Go to [Actions](https://github.com/riginoommen/riginoommen/actions) → Select workflow → Run workflow
