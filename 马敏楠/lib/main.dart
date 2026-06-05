import 'package:flutter/material.dart';

void main() {
  runApp(const InnovationHelloApp());
}

class InnovationHelloApp extends StatelessWidget {
  const InnovationHelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '创新实验 Flutter 入门 - 马敏楠',
      theme: ThemeData(
        // 修改1：主题色改为青色（teal）
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
  // 修改2：变量名改为打卡次数，含义更明确
  int checkedInCount = 0;

  void finishOneCheckIn() {
    setState(() {
      checkedInCount += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 修改3：AppBar 标题包含姓名
        title: const Text('马敏楠的创新实验 Flutter 首页'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 修改4：图标换成 school，配合主题色
              Icon(Icons.school, size: 72, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 24),
              // 修改5：页面说明包含姓名
              const Text(
                'Hello Flutter！马敏楠已完成第14周入门任务！',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // 修改6：填入真实姓名、小组编号和学号后四位
              const Text(
                '姓名：马敏楠｜小组：第9组（0189）',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 32),
              // 修改7：计数含义改为「打卡次数」
              Text(
                '今日打卡次数：$checkedInCount 次',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
      ),
      // 修改8：按钮图标和文案调整
      floatingActionButton: FloatingActionButton.extended(
        onPressed: finishOneCheckIn,
        icon: const Icon(Icons.add_task),
        label: const Text('完成一次打卡'),
      ),
    );
  }
}
