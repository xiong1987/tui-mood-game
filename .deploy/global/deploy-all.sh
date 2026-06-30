#!/bin/bash
# 一键部署到多个平台
# 注意：使用前请确保已配置各平台的认证信息

echo "🌍 OneKeyDeployKit - 全球一键部署"
echo "================================"
echo ""

SUCCESS_COUNT=0
FAIL_COUNT=0

deploy_platform() {
  local name="$1"
  shift
  local cmd="$1"
  shift

  echo "🚀 部署到 $name..."
  if "$cmd" "$@"; then
    echo "✅ $name 部署成功"
    SUCCESS_COUNT=$((SUCCESS_COUNT + 1))
  else
    echo "❌ $name 部署失败"
    FAIL_COUNT=$((FAIL_COUNT + 1))
  fi
  echo ""
}

# 国际平台
if command -v vercel &> /dev/null; then
  deploy_platform "Vercel" vercel deploy --prod --yes
fi

if command -v netlify &> /dev/null; then
  deploy_platform "Netlify" netlify deploy --prod
fi

# 国内平台
if command -v ossutil &> /dev/null; then
  deploy_platform "阿里云 OSS" bash .deploy/global/aliyun-deploy.sh
fi

echo "================================"
echo "📊 部署完成"
echo "   成功: $SUCCESS_COUNT 个平台"
echo "   失败: $FAIL_COUNT 个平台"
echo ""
echo "🌍 全球部署完成!"
