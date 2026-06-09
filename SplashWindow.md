# `SplashWindow` — CSM 模块接口文档

> ⚠️ **AI 自动生成，还未经过人工审阅**
>
> 本文档由 AI 基于代码仓库结构和脚本上下文自动生成，可能包含不准确或遗漏的信息。请在合并前进行人工核查。

---

## 功能简述

`SplashWindow` 是一个 CSM 模块，用于在系统启动过程中**显示启动引导窗口（Splash Screen）**，提供友好的加载过渡界面。

当 CSM 模块管理器启动各个模块时，可通过本模块显示模块启动进度，提升用户体验。

---

## 模块信息

| 属性           | 值                                              |
| -------------- | ----------------------------------------------- |
| LabVIEW 版本   | ≥ 2020                                          |
| 支持的操作系统 | Windows                                         |
| 支持 RT        | ❌ 不支持                                       |
| 支持 64-bit    | ✅ 支持                                         |
| 所属模块组     | `CSM-SplashWindow.lvlib`                        |

---

## 依赖项

| 依赖                                                                                                | 类型 |
| --------------------------------------------------------------------------------------------------- | ---- |
| [Communicable-State-Machine](https://github.com/NEVSTOP-LAB/Communicable-State-Machine)             | 必须 |
| [CSM-API-String-Arguments-Support](https://github.com/NEVSTOP-LAB/CSM-API-String-Arguments-Support) | 可选 |
| [TagDB](https://github.com/NEVSTOP-LAB/TagDB)                                                      | 可选 |

---

## API 接口（消息接口）

以下是外部调用者可以发送给本模块的消息。

### `API: Initialize`

初始化 Splash 窗口资源。

- **参数**：`APIString` — `String`：配置文件路径
- **响应**：N/A

### `API: Start`

显示 Splash 窗口。

- **参数**：N/A
- **响应**：N/A

### `API: Stop`

关闭 Splash 窗口。

- **参数**：N/A
- **响应**：N/A

### `API: Module Starting Up`

通知 Splash 窗口某个模块正在启动，更新进度提示。

- **参数**：`APIString` — `String`：模块名称
- **响应**：N/A

### `UI: Front Panel State`

控制本模块前面板的显示状态。

- **参数**：`APIString` — `Enum`：`Open`、`Close` 或 `Minimize`
- **响应**：N/A

### 参数类型说明

| 类型        | 说明                                                                                              |
| ----------- | ------------------------------------------------------------------------------------------------- |
| `APIString` | 支持嵌套键值对的纯文本字符串，需要 CSM API String Arguments Support 插件                          |
| `ErrStr`    | 将错误信息编码为字符串，内置支持                                                                  |

> **注意**：接口文档中对 `String` 类型数据统一使用 `APIString` 标注。

---

## 状态广播接口

本模块不主动广播状态。

---

## 属性接口

本模块暂无对外暴露的属性。

---

## 配置说明

### 前面板参数

| 控件名称      | 类型   | 默认值 | 说明                 |
| ------------- | ------ | ------ | -------------------- |
| `Title`       | String | CSM    | 窗口标题文字         |
| `Subtitle`    | String |        | 窗口副标题/进度文字  |

> 可通过 TagDB 标签动态更新显示内容。

---

## 调用限制与注意事项

> [!IMPORTANT]
>
> - `API: Initialize` **必须**在其他任何 API 之前调用。
> - 本模块为**单例**——同一时间不可运行多个实例。
> - 启动完成后应调用 `API: Stop` 关闭 Splash 窗口。

---

## 使用示例

> 将 `SplashWindow` 替换为启动模块 VI 时实际使用的名称。

### 基本生命周期

```csm
// 初始化并显示 Splash 窗口
API: Initialize -@ SplashWindow
API: Start -@ SplashWindow

// 通知模块正在启动
API: Module Starting Up >> SimWaveform -@ SplashWindow

// 所有模块启动完成后关闭
API: Stop -@ SplashWindow
```

---

## 备注

- API 文件夹中提供 `SplashWnd - Module Starting Up.vi` 和 `SplashWnd - Module Starting Up2.vi` 两个辅助 VI，可简化调用。
- 支持通过 TagDB 动态更新 Splash 窗口中显示的标签信息。

---

- _完整 CSM 语法参考：<https://github.com/NEVSTOP-LAB/Communicable-State-Machine/blob/main/.doc/Syntax.md>_
- _CSM Wiki：<https://nevstop-lab.github.io/CSM-Wiki/>_
