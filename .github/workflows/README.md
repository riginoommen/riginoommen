# GitHub Profile Workflows

## Active Workflows

| Workflow | Schedule | Purpose |
|----------|----------|---------|
| `blog-post-workflow.yml` | Daily (00:00 UTC) | Updates Medium blog posts |
| `graphql-feed.yml` | Daily (06:00 UTC) | Updates GraphQL blog posts |
| `github-activity.yml` | Every 6 hours | Shows recent GitHub activity |
| `link-checker.yml` | Weekly (Sunday) | Checks for broken links |
| `waka-action.yml` | Daily (00:00 UTC) | WakaTime coding stats |

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

For detailed setup instructions, see [AUTOMATION_SETUP.md](../../AUTOMATION_SETUP.md)
