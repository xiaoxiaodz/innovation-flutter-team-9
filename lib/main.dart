import 'package:flutter/material.dart';

void main() {
  runApp(const InnovationHelloApp());
}

// =====================================================================
// 个性化修改清单（满足讲义要求的 4 处以上）：
//  1. MaterialApp 主题色改为深青色 (Colors.teal)
//  2. AppBar 标题改为 "XXX 的创新实验 Flutter 首页"（含本人姓名占位）
//  3. 图标从 rocket_launch 改为 school（学习主题）
//  4. 页面提示语改为个人专属文案
//  5. 姓名 / 学号后四位 / 小组编号信息独立一行展示
//  6. 按钮文案改为 "完成一次学习打卡"，图标改为 menu_book
//  7. 计数含义改为 "今日学习打卡次数"
//  8. 新增卡片容器包裹核心信息，视觉层次更丰富
// =====================================================================

class InnovationHelloApp extends StatelessWidget {
  const InnovationHelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '创新实验 Flutter 第14周',
      // ✅ 修改1：主题色换成深青色
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HelloHomePage(),
    );
  }
}

class HelloHomePage extends StatefulWidget {
  const HelloHomePage({super.key});

  @override
  State<HelloHomePage> createState() => _HelloHomePageState();
}

class _HelloHomePageState extends State<HelloHomePage> {
  int studyCount = 0; // ✅ 修改7：变量名改为 studyCount，含义更明确

  void doOneStudy() {
    setState(() {
      studyCount += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      // ✅ 修改2：AppBar 标题含姓名
      appBar: AppBar(
        title: const Text('XXX 的创新实验 Flutter 首页'),
        backgroundColor: colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ✅ 修改3：图标改为 school
              Icon(Icons.school, size: 80, color: colorScheme.primary),
              const SizedBox(height: 20),
              // ✅ 修改4：页面提示语改为个人文案
              const Text(
                'Hello Flutter！\n我已完成第 14 周创新实验入门任务 🎉',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // ✅ 修改5：姓名 / 学号 / 小组独立展示，使用 Card 包裹
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 14,
                  ),
                  child: Column(
                    children: const [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.person, size: 18),
                          SizedBox(width: 6),
                          Text('姓名：XXX　　学号后四位：0000'),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.group, size: 18),
                          SizedBox(width: 6),
                          Text('小组：第 X 组'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 28),
              // ✅ 修改7：计数含义改为学习打卡次数
              Text(
                '今日学习打卡次数：$studyCount 次',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
      ),
      // ✅ 修改6：按钮文案与图标均改为学习主题
      floatingActionButton: FloatingActionButton.extended(
        onPressed: doOneStudy,
        icon: const Icon(Icons.menu_book),
        label: const Text('完成一次学习打卡'),
      ),
    );
  }
}
