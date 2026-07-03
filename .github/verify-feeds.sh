#!/bin/bash
# Quick script to verify RSS feeds are working

echo "🔍 Verifying RSS Feeds..."
echo ""

echo "📝 Medium Feed:"
echo "URL: https://medium.com/feed/@riginoommen"
curl -s -I "https://medium.com/feed/@riginoommen" | head -1
echo ""

echo "🚀 GraphQL Foundation Feed:"
echo "URL: https://graphql.org/blog/rss.xml"
curl -s -I "https://graphql.org/blog/rss.xml" | head -1
echo ""

echo "✅ If both show '200 OK', feeds are working!"
echo "❌ If you see errors, the feed URLs may need updating"
