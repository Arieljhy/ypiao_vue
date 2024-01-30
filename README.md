# Ai-Docs-Bot

### 介绍
智能客服SDK ，一款支持多种形式的答案展示，包括文字、列表和链接等，以便开发者能够更直观地获取所需的信息的智能问答工具插件。
可以让各方能够快速、低成本地接入智能客服功能，具有灵活性、可扩展性，可轻松集成到各种平台中，兼容多平台（PC、Wise），开发者无需自行开发和维护智能问答系统，从而节省时间和成本。

### 相关技术

- Vue3 + TypeScript + Pinia + Vite 

- 组件库： Ant Design Vue 

- 推荐node版本：v20.9.0

## 开发准备工作
 ### clone到本地 
    点击右上角 “克隆代码库” 按钮，可使用 HTTPS 方式，也可以使用 SSH 方式， 进行clone操作。
    克隆完需要安装hook: 在本地项目终端中 输入命令安装 hook
### 安装 VSCode 插件
+ [VSCode](https://code.visualstudio.com/) 
+ [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) (and disable Vetur)
+ [TypeScript Vue Plugin (Volar)](https://marketplace.visualstudio.com/items?itemName=Vue.vscode-typescript-vue-plugin).

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

## 文件资源目录 📚

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
│  ├─ mock                # 
│  ├─ services            # 项目接口相关
│  ├─ stores              # pinia store
│  ├─ styles              # 全局样式文件
│  ├─ typings             # 全局 ts 声明
│  ├─ utils               # 常用工具库
│  ├─ App.vue             # 项目主组件
│  ├─ main.ts             # 项目入口文件
│  └─ vite-env.d.ts       # 指定 ts 识别 vue
├─ test                   # 
├─ .eslintignore          # 忽略 Eslint 校验
├─ .eslintrc.cjs          # Eslint 校验配置文件
├─ .gitignore             # 忽略 git 提交
├─ .node-version          # husky 配置文件
├─ .npmrc                 # npm 配置文件
├─ .stylelintignore       # 忽略 stylelint 格式化
├─ .stylelintrc.cjs       # stylelint 样式格式化配置
├─ build.sh               # 
├─ ci.yml                 # 
├─ components.d,ts        # 
├─ .prettierignore        # 忽略 Prettier 格式化
├─ .prettierrc.cjs        # Prettier 格式化配置
├─ .env.d.ts              # 
├─ index.html             # 入口 html
├─ LICENSE                # 开源协议文件
├─ package-lock.json      # 依赖包包版本锁
├─ package.json           # 依赖包管理
├─ playground.html        # 
├─ playwright.config.ts   # 
├─ postcss.config.js      # postcss 配置
├─ README.md              # README 介绍
├─ tsconfig.app.json      # typescript 配置文件
├─ tsconfig.json          # typescript 全局配置
├─ tsconfig.node.json     # typescript 配置文件
├─ tsconfig.vitest.json   # typescript 配置文件
├─ vite.config.ts         # vite 全局配置文件
└─ vitest.config.ts       # vite 全局配置文件

```

### 开发 & 调试 & 部署 & 上线 指引 文档 👀

- 文档链接：https://ku.baidu-int.com/knowledge/HFVrC7hq1Q/xjYiDpu--c/5mAiFsK5ix/AlkuDr-AovAjxr
- 文档中包含 **前置准备（相关文档、部署环境等）、开发流程（提测流程等）、调试联调 、部署上线流程** 的相关介绍, 可根据文档进行开发。 
