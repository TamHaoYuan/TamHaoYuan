---
title: "关于使用hugo搭建网站时遇到的问题"
description: 
date: 2025-07-16T12:45:56+08:00
image: 
math: 
license: 
hidden: false
comments: true
draft: false

---

# hugo问题

## 1. 使用windows/linux包管理器下载过慢的问题

### 解决方法：更换国内源

## 2. 使用Stack主题时hugo目录没有相应文件

### 原因：hugo版本过新

### 解决方法：更换新版主题

## 3. liunx环境下报错 `Error: "art-x-de.yaml:Zone": language: tag is not well-formed`

解决方法：重新安装hugo

# github部署问题

## 1. 没有开启SSL

### 报错代码：

## 解决方法：

### 开启SSL，代码如下：

```
ssh-keygen -t ed25519 -C "<your github email>"
# -C后面的是自定义的密钥注释/标签，这里一般输入自己的邮箱
# -----------------------------------------------
# 运行上述命令，会询问你是否自定义密钥名字/路径，以及是否需要给该密钥添加密码，敲回车是跳过
# Generating public/private ed25519 key pair.
# Enter file in which to save the key (/home/xxx/.ssh/id_ed25519): github_auth
# Enter passphrase (empty for no passphrase): 
# Enter same passphrase again: 
# Your identification has been saved in github_auth.
# Your public key has been saved in github_auth.pub.
# The key fingerprint is: xxx
# The key's randomart image is: xxx
# -----------------------------------------------
# ed25519是目前最安全、加解密速度最快的key类型。
# 但有些旧版本的SSH还不支持ed25519算法，这时候可以用rsa算法。
# 因此，有ed25519就用ed25519，没有就用rsa。
ssh-keygen -t rsa -b 4096 -C "your github email"
eval "$(ssh-agent -s)"
# 输出：Agent pid 59566
ssh-add ~/.ssh/github_auth
# 输出：Identity added: github_auth (xxxx)
```

生成SSH密钥后，**复制公钥内容**到自己的Github账户中。具体地，**点击Github右上角账户图标→Settings→SSH and GPG keys→New SSH key，在Key一栏粘贴公钥内容，在Title一栏设定这个SSH密钥的标识**：

```bash
cat ~/.ssh/github_auth.pub
# 把终端输出的内容复制到Github账户中
```

![](https://pica.zhimg.com/v2-1a2430dc5fa0d1869328fd068e1e404c_1440w.jpg)

![](https://pic4.zhimg.com/v2-c1bf8b83515616ba81f5c09bbc3e1729_1440w.jpg)

---

## 

执行完上述两步操作后，正常情况下已经配置成功了，此时可以验证一下：

## 2. github部署后无法找到网站问题：

在仓库setting > page >中  
将分支改为main

## 

# 参考文章：

1.[Ubuntu 22.04 更换国内源 清华源 阿里源 中科大源 163源 - Linux迷](https://www.linuxmi.com/ubuntu-22-04-apt-sources-list.html)

2.[chocolatey 在国内使用_古承风-GitCode 开源社区]([chocolatey 在国内使用_古承风-GitCode 开源社区](https://gitcode.csdn.net/66d1cf14e2ce0119e0a18ec0.html))

3.[](https://zhuanlan.zhihu.com/p/343055339 )

4. [如何开启githubSSH](https://zhuanlan.zhihu.com/p/628727065 )

# 建站参考文章：

   [一些 Hugo 短代码 | Naive Koala](https://www.xalaok.top/post/hugo-shortcodes/)

   [HugoStackHeatmap明暗主题适配](https://blog2.pillar.fun/p/hugostackheatmap%E6%98%8E%E6%9A%97%E4%B8%BB%E9%A2%98%E9%80%82%E9%85%8D/)

   [HugoStack装修](https://blog2.pillar.fun/p/hugostack%E8%A3%85%E4%BF%AE/)

   https://lqxhub.github.io/posts/a660c9b1/

   [建站技术 | 使用 Hugo &#43; Stack 简单搭建一个博客](https://blog.reincarnatey.net/2023/build-hugo-blog-with-stack-mod/)

   https://hugo-ap0.pages.dev/p/hugo-stack-%E4%B8%BB%E9%A2%98%E5%9F%BA%E7%A1%80%E9%85%8D%E7%BD%AE/

   https://sazerac-kk.github.io/p/%E6%95%99%E7%A8%8Bhugo-github%E5%8D%9A%E5%AE%A2%E9%83%A8%E7%BD%B2/

   [使用hugo stack主题快速搭建博客](https://liuhouliang.com/post/hugo_theme/)

   https://vofficial233.com/archives/deploy-my-hugo-blog#%E8%A7%A3%E5%86%B3%E9%83%A8%E5%88%86%E9%9D%99%E6%80%81%E8%B5%84%E6%BA%90%E5%9C%A8%E5%A4%A7%E9%99%86%E5%9C%B0%E5%8C%BA%E8%AE%BF%E9%97%AE%E8%BF%87%E6%85%A2%E9%97%AE%E9%A2%98

### 