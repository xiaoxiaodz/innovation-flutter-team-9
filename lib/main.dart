import 'package:flutter/material.dart';

void main() {
  runApp(const InnovationHelloApp());
}

// =====================================================================
// 个性化修改清单（满足讲义要求的 4 处以上）：
//  1. MaterialApp 主题色改为深紫色 (Colors.deepPurple) — 区别于其他同学的青色/蓝色
//  2. AppBar 标题改为 "车赵阳 的 Flutter 创新实验"（含本人姓名）
//  3. 图标从 school 改为 rocket_launch（探索主题，向往星辰大海）
//  4. 页面标语改为个人专属励志文案
//  5. 姓名 / 学号后四位 / 小组信息用渐变色卡片展示（视觉风格不同）
//  6. 计数器改为 "本次实验操作次数"，变量名 operationCount
//  7. FAB 按钮文案改为 "记录一次操作"，图标改为 touch_app
//  8. 新增技能标签行（Flutter / Dart / 云南大学），彰显个人背景
// =====================================================================

class InnovationHelloApp extends StatelessWidget {
  const InnovationHelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ✅ 修改1：标题含本人姓名，区别于模板
      title: '车赵阳 - 创新实验 Flutter',
      // ✅ 修改2：主题色换成深紫色（distinctly different from teal/blue）
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  // ✅ 修改6：变量改为 operationCount，含义为"本次实验操作次数"
  int operationCount = 0;

  void recordOperation() {
    setState(() {
      operationCount += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      // ✅ 修改3：AppBar 标题含本人姓名
      appBar: AppBar(
        title: const Text('车赵阳 的 Flutter 创新实验'),
        backgroundColor: colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ✅ 修改4：图标换成 rocket_launch（探索/向往主题）
                Icon(Icons.rocket_launch, size: 88, color: colorScheme.primary),
                const SizedBox(height: 18),
                // ✅ 修改5：标语改为个人专属文案
                Text(
                  'Hello Flutter，你好世界！\n探索未知，从这一行代码开始 🚀',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 20),
                // ✅ 修改7：个人信息卡片，使用 primaryContainer 背景色区别于其他人
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person_pin,
                            size: 20,
                            color: colorScheme.primary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '姓名：车赵阳　学号后四位：0231',
                            style: TextStyle(
                              fontSize: 15,
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.groups,
                            size: 20,
                            color: colorScheme.primary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '所在小组：第 9 组',
                            style: TextStyle(
                              fontSize: 15,
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.school,
                            size: 20,
                            color: colorScheme.primary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '云南大学 · 智能科学与技术',
                            style: TextStyle(
                              fontSize: 15,
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // ✅ 修改8：新增技能标签行
                Wrap(
                  spacing: 8,
                  children: [
                    Chip(
                      label: const Text('Flutter'),
                      avatar: const Icon(Icons.flutter_dash, size: 16),
                      backgroundColor: colorScheme.secondaryContainer,
                    ),
                    Chip(
                      label: const Text('Dart'),
                      avatar: const Icon(Icons.code, size: 16),
                      backgroundColor: colorScheme.secondaryContainer,
                    ),
                    Chip(
                      label: const Text('云南大学'),
                      avatar: const Icon(Icons.location_city, size: 16),
                      backgroundColor: colorScheme.secondaryContainer,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // 计数器展示
                Text(
                  '本次实验操作次数：$operationCount 次',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // ✅ 修改6：FAB 文案改为"记录一次操作"，图标用 touch_app
      floatingActionButton: FloatingActionButton.extended(
        onPressed: recordOperation,
        icon: const Icon(Icons.touch_app),
        label: const Text('记录一次操作'),
      ),
    );
  }
}
