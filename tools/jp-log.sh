#!/bin/bash
set -e

DATE=$(date +"%Y-%m-%d")
POST_DIR="source/_posts/jp-log"
FILE="$POST_DIR/$DATE.md"

mkdir -p "$POST_DIR"

cat <<EOF > "$FILE"
---
title: 日语学习记录 $DATE
date: $DATE
tags:
  - 日语
  - 学习日志
---

## 📅 $DATE 日语学习记录

\`\`\`json
EOF

pbpaste >> "$FILE"
echo "\`\`\`" >> "$FILE"

echo "📝 已生成文章：$FILE"

# ---------- Git 提交（源码） ----------
git add .
if git diff --cached --quiet; then
  echo "⚠️ 没有需要提交的更改"
else
  git commit -m "jp log $DATE"
  git push origin master
fi

echo "✅ 已推送到 GitHub，等待 Actions 自动部署"
