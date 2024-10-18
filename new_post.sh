# 입력된 제목을 포스트 파일 이름으로 변환
title=$1
filename=$(date +%Y-%m-%d)-$(echo "$title" | sed 's/ /-/g').md

# _posts 디렉토리로 이동
cd _posts

# 템플릿 파일 생성
cat <<EOT >> $filename
---
layout: single
title: "$title"
date: $(date +%Y-%m-%d' '%H:%M:%S' '%z)
categories: [category1, category2]
tags: [tag1, tag2]
toc: true
toc_label: "Table of Contents"
toc_icon: "list"
author: "Innseo Jung"
email: "inseofromseoul@gmail.com"
location: "Sydney"
---

## Introduction

Write your introduction here.

## Section 1

Your content here.

## Conclusion

Final thoughts.
EOT

echo "Post $filename created."