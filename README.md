# Ai-Docs-Bot

### 介绍
智能客服SDK ，一款支持多种形式的答案展示，包括文字、列表和链接等，以便开发者能够更直观地获取所需的信息的智能问答工具插件。
可以让各方能够快速、低成本地接入智能客服功能，具有灵活性、可扩展性，可轻松集成到各种平台中，兼容多平台（PC、Wise），开发者无需自行开发和维护智能问答系统，从而节省时间和成本。

### 相关技术

- Vue3 + TypeScript + Pinia + Vite 
- 组件库：Ant Design Vue 
- 推荐node版本：v20.9.0

## 准备工作

### 安装 VSCode 插件
+ [VSCode](https://code.visualstudio.com/) 
+ [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) (and disable Vetur)
+ [TypeScript Vue Plugin (Volar)](https://marketplace.visualstudio.com/items?itemName=Vue.vscode-typescript-vue-plugin).

### 克隆代码库到本地
- 点击右上角 “克隆代码库” 按钮，用 HTTPS 或者 SSH 方式，克隆代码库到本地
- 克隆代码库到本地之后，安装hook，在本地项目终端中执行命令
```sh
curl -s http://icode.baidu.com/tools/hooks/commit-msg > $(git rev-parse --git-dir)/hooks/commit-msg && chmod u+x $(git rev-parse --git-dir)/hooks/commit-msg
```

### 安装依赖

```sh
npm config set registry http://registry.npm.baidu-int.com
npm install
```

## 开发和调试

### 本地开发：

```sh
npm run dev
```

### 构建产物：

```sh
npm run build
```

### Eslint：

```sh
npm run lint
```

### StyleLint
```sh
npm run lint:style
```

### 文件资源目录

```text
AI-DOCS-BOT
├─ .husky                 # husky 配置文件
├─ e2e                    # VSCode 推荐配置
├─ src
│  ├─ assets              # 静态资源文件
│  ├─ common              # 公共文件
│  ├─ components          # 全局组件页面
│  ├─ compositions        # 全局公共composition/hooks
│  ├─ const               # 各种常量
│  ├─ mock                # mock数据
│  ├─ services            # 项目接口相关
│  ├─ stores              # pinia store
│  ├─ typings             # 全局样式文件
│  ├─ utils               # 常用工具库
│  ├─ App.vue             # 项目主组件
│  └─ main.ts             # 项目入口文件
│  
├─ test                   # 测试文件
├─ .eslintignore          # 忽略 Eslint 校验
├─ .eslintrc.cjs          # Eslint 校验配置文件
├─ .gitignore             # 忽略 git 提交
├─ .node-version          # node 版本文件
├─ .npmrc                 # npm 配置文件
├─ .stylelintignore       # 忽略 stylelint 格式化
├─ .stylelintrc.cjs       # stylelint 样式格式化配置
├─ build.sh               # 自动化构建项目脚本文件
├─ ci.yml                 # 解决build语法错误
├─ components.d.ts        # 声明在项目中使用的组件的ts类型
├─ .prettierignore        # 忽略 Prettier 格式化
├─ .prettierrc.cjs        # Prettier 格式化配置
├─ env.d.ts               # 全局环境变量的类型声明
├─ index.html             # 入口 html
├─ package-lock.json      # 依赖包包版本锁
├─ package.json           # 依赖包管理
├─ playground.html         
├─ playwright.config.ts   # Playwright 测试框架配置文件
├─ postcss.config.js      # postcss 配置
├─ README.md              # README 介绍
├─ tsconfig.app.json      # typescript 配置文件
├─ tsconfig.json          # typescript 全局配置
├─ tsconfig.node.json     # typescript node 相关配置文件
├─ tsconfig.vitest.json   # typescript vite 相关 配置文件
├─ vite.config.ts         # vite 全局配置文件
└─ vitest.config.ts       # vite 全局配置文件

```

### 开发 & 调试 & 部署 & 上线 指引 文档

- 文档链接：https://ku.baidu-int.com/knowledge/HFVrC7hq1Q/xjYiDpu--c/5mAiFsK5ix/AlkuDr-AovAjxr
- 文档中包含 **前置准备（相关文档、部署环境等）、开发流程（提测流程等）、调试联调 、部署上线流程** 的相关介绍, 可根据文档进行开发。 
