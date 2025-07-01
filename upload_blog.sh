#!/bin/bash

# Usage: ./upload_blog.sh "hello-codegrain" "Hello from Codegrain" "A brief welcome and intro to our dev blog."

set -e
BUCKET="gs://codegrain.appspot.com"
# Args
ID="$1"
TITLE="$2"
SUMMARY="$3"

if [[ -z "$ID" || -z "$TITLE" || -z "$SUMMARY" ]]; then
  echo "Usage: $0 <id> <title> <summary>"
  exit 1
fi

# Paths
MARKDOWN_DIR="content/blogs"
MARKDOWN_FILE="${MARKDOWN_DIR}/${ID}.md"
METADATA_FILE="${MARKDOWN_DIR}/${ID}.json"
STORAGE_PATH="blogs/${ID}.md"

# Create directory if needed
mkdir -p "$MARKDOWN_DIR"

# Create a markdown template
cat > "$MARKDOWN_FILE" <<EOF
# $TITLE

Write your content here.

## Summary

$SUMMARY
EOF

# Create metadata JSON
cat > "$METADATA_FILE" <<EOF
{
  "id": "$ID",
  "title": "$TITLE",
  "summary": "$SUMMARY",
  "markdownPath": "$STORAGE_PATH",
  "created": "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
}
EOF

# Upload to Firebase Storage
echo "📤 Uploading $MARKDOWN_FILE to Firebase Storage..."
gsutil cp "$MARKDOWN_FILE" "$BUCKET/$STORAGE_PATH"

# Upload to Firestore
echo "📝 Inserting metadata into Firestore..."
firebase firestore:documents:create "blogs/$ID" --data "$(cat $METADATA_FILE)"

echo "✅ Blog '$ID' uploaded and published."
