import 'package:flutter/material.dart';
import 'package:flutter_notion_avatar/flutter_notion_avatar.dart';
import 'package:flutter_notion_avatar/flutter_notion_avatar_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  NotionAvatarController? controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin NotionAvatar app'),
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: NotionAvatar(
              onCreated: (NotionAvatarController controller) {
                this.controller = controller;
              },
            ),
          ),
        ),
        bottomNavigationBar: Row(children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                controller?.random();
              },
              child: const Text('Random'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                
              },
              child: const Text('Random'),
            ),
          ),
        ]),
      ),
    );
  }
}
