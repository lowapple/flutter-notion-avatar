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
              useRandom: true,
              onCreated: (NotionAvatarController controller) {
                this.controller = controller;
                //! Examples
                // this.controller?.random();
                // this.controller?.setAccessories(5); 
                // this.controller?.setEyes(5);
                // this.controller?.setEyebrows(5);
                // this.controller?.setFace(5);
                // this.controller?.setGlasses(5);
                // this.controller?.setHair(5);
                // this.controller?.setMouth(5);
                // this.controller?.setNose(5);
                // this.controller?.setDetails(5);
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
        ]),
      ),
    );
  }
}
