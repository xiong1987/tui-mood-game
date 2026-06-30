# 🌍 全球部署指南

本文档包含 4 个平台的部署配置，覆盖全球和中国地区。

---

## 🌐 国际平台 (4 个)

| 平台 | 类型 | 免费额度 | 部署速度 | 全球覆盖 |
|------|------|----------|----------|----------|
| Cloudflare Pages | serverless | ✅ 免费版 | ⚡ 快 | 🌍 全球 |
| Vercel | serverless | ✅ 免费版 | ⚡ 快 | 🌍 全球 |
| Netlify | serverless | ✅ 免费版 | ⚡ 快 | 🌍 全球 |
| GitHub Pages | static | ✅ 免费版 | ⚡ 快 | 🌍 全球 |

### 推荐选择
- **最佳整体**: Vercel / Netlify（简单、快速、免费）
- **最佳性能**: Cloudflare Pages（全球边缘节点最多）
- **最佳免费**: GitHub Pages（完全免费，限制较少）
- **去中心化**: IPFS + Pinata（抗审查）

---

## 🇨🇳 国内平台 (0 个)

| 平台 | 类型 | 免费额度 | 国内速度 | 备案要求 |
|------|------|----------|----------|----------|


### 推荐选择
- **国内用户**: 阿里云/腾讯云 + CDN（速度最快）
- **个人开发者**: 七牛云（有免费额度）

---

## 🚀 快速开始

### 1. 选择平台
根据你的目标用户地区选择合适的平台。

### 2. 配置凭证
大部分平台需要配置 API Key 或 Token，具体请参考各平台文档。

### 3. 执行部署
```bash
# Vercel (推荐国内开发者了解)
npm install -g vercel
vercel deploy --prod

# Netlify
npm install -g netlify-cli
netlify deploy --prod

# GitHub Pages
git push origin main  # 自动部署
```

---

## 📋 部署检查清单

- [ ] 配置正确的构建命令
- [ ] 设置正确的发布目录
- [ ] 配置自定义域名（可选）
- [ ] 设置 HTTPS
- [ ] 配置缓存策略
- [ ] 测试 404 页面
- [ ] 配置 SPA 重写（如需要）
- [ ] 设置 CI/CD 自动部署

---

## 🔧 CI/CD 自动部署

### GitHub Actions
已生成配置文件: .deploy/global/ci-cd/github-actions.yml

使用方式:
1. 将文件复制到 .github/workflows/deploy.yml
2. 配置对应的 Secrets
3. 推送到 main 分支自动部署

### GitLab CI
已生成配置文件: .deploy/global/ci-cd/gitlab-ci.yml

---

## 💡 最佳实践

1. **使用 CDN 加速**: 所有静态资源都应该走 CDN
2. **合理设置缓存**: 静态资源设置长缓存，HTML 页面短缓存
3. **版本化资源**: CSS/JS 文件添加哈希后缀，便于缓存更新
4. **多区域部署**: 全球用户考虑使用多云部署
5. **监控可用性**: 使用 uptime 监控工具监控站点可用性

---

*由 OneKeyDeployKit 自动生成*
