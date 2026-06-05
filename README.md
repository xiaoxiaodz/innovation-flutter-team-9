# Flutter Hello World 个性化 — 第14周创新实验

本项目为创新实验第14周个人任务成果。基于老师提供的示例程序，在 `lib/main.dart` 中完成了 **8 处个性化修改**。

## 个性化修改说明

| # | 位置 | 修改内容 |
|---|------|---------|
| 1 | MaterialApp theme | 主题色由靛蓝 (indigo) 改为深青色 (teal) |
| 2 | AppBar title | 标题改为 "邓卓 的创新实验 Flutter 首页"（含姓名） |
| 3 | Icon | 图标从 `rocket_launch` 改为 `school`（学习主题） |
| 4 | 页面提示语 | 改为个人专属文案，含 emoji |
| 5 | 个人信息区 | 新增 Card 卡片，显示姓名、学号后四位、小组编号 |
| 6 | FloatingActionButton | 文案改为"完成一次学习打卡"，图标改为 `menu_book` |
| 7 | 计数变量 & 含义 | 变量重命名为 `studyCount`，含义改为"今日学习打卡次数" |
| 8 | 布局间距 | 调整 padding / spacing，提升可读性 |

## 运行方式

```powershell
flutter run
```

可运行到 Android 模拟器、Chrome 或 Windows 桌面。

## 提交 GitHub

```powershell
git checkout -b 0168-dengzhuo-hello
git add lib/main.dart
git commit -m "personalize flutter hello page"
git push -u origin 0168-dengzhuo-hello
```

## 验收自查

- [x] Flutter App 能运行，无红屏
- [x] 至少 4 处个性化修改（实际完成 8 处）
- [x] 页面含本人姓名 / 学号 / 小组信息
- [x] 点击按钮后，打卡次数数字增加（setState 已正确调用）
- [ ] 有运行截图（运行后截图上传）
- [ ] 有 GitHub 提交记录（push 后截图）
