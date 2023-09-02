// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'flutter_notion_avatar_controller.dart';
import 'resources/assets.gen.dart';

class _NotionAvatar extends NotionAvatarController with ChangeNotifier {
  int _accessories = 0;
  int _beard = 0;
  int _details = 0;
  int _eyebrows = 0;
  int _eyes = 0;
  int _face = 0;
  int _festival = 0;
  int _glasses = 0;
  int _hair = 0;
  int _mouth = 0;
  int _nose = 0;

  int get accessories => _accessories;
  int get beard => _beard;
  int get details => _details;
  int get eyebrows => _eyebrows;
  int get eyes => _eyes;
  int get face => _face;
  int get festival => _festival;
  int get glasses => _glasses;
  int get hair => _hair;
  int get mouth => _mouth;
  int get nose => _nose;

  @override
  void random() {
    // random all values
    final random = Random();
    _accessories = random.nextInt(14);
    _beard = random.nextInt(16);
    _details = random.nextInt(13);
    _eyebrows = random.nextInt(15);
    _eyes = random.nextInt(13);
    _face = random.nextInt(15);
    _festival = random.nextInt(10);
    _glasses = random.nextInt(14);
    _hair = random.nextInt(58);
    _mouth = random.nextInt(19);
    _nose = random.nextInt(13);
    notifyListeners();
  }

  // accessories: 0-14
  @override
  void setAccessories(int number) {
    _accessories = number;
    notifyListeners();
  }

  // beard: 0-16
  @override
  void setBeard(int number) {
    _beard = number;
    notifyListeners();
  }

  // details: 0-13
  @override
  void setDetails(int number) {
    _details = number;
    notifyListeners();
  }

  // eyebrows: 0-15
  @override
  void setEyebrows(int number) {
    _eyebrows = number;
    notifyListeners();
  }

  // eyes: 0-13
  @override
  void setEyes(int number) {
    _eyes = number;
    notifyListeners();
  }

  // face: 0-15
  @override
  void setFace(int number) {
    _face = number;
    notifyListeners();
  }

  // festival-christmas: 0-10
  // 0-5 : christmas
  // 6-10: halloween
  @override
  void setFestival(int number) {
    _festival = number;
    notifyListeners();
  }

  // glasses: 0-14
  @override
  void setGlasses(int number) {
    _glasses = number;
    notifyListeners();
  }

  // hair: 0-58
  @override
  void setHair(int number) {
    _hair = number;
    notifyListeners();
  }

  // mouth: 0-19
  @override
  void setMouth(int number) {
    _mouth = number;
    notifyListeners();
  }

  // nose: 0-13
  @override
  void setNose(int number) {
    _nose = number;
    notifyListeners();
  }
}

class NotionAvatar extends StatefulWidget {
  final void Function(NotionAvatarController controller) onCreated;
  const NotionAvatar({
    super.key,
    required this.onCreated,
  });

  @override
  State<NotionAvatar> createState() => _NotionAvatarState();
}

class _NotionAvatarState extends State<NotionAvatar> {
  static const String _package = 'flutter_notion_avatar';
  NotionAvatarController? controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        controller = _NotionAvatar();
        controller?.random();
        widget.onCreated(controller!);
        return controller as _NotionAvatar;
      },
      child: Consumer<_NotionAvatar>(
        builder: (context, avatar, _) {
          print(
            'accessories: ${avatar.accessories}, '
            'beard: ${avatar.beard}, '
            'details: ${avatar.details}, '
            'eyebrows: ${avatar.eyebrows}, '
            'eyes: ${avatar.eyes}, '
            'face: ${avatar.face}, '
            'festival: ${avatar.festival}, '
            'glasses: ${avatar.glasses}, '
            'hair: ${avatar.hair}, '
            'mouth: ${avatar.mouth}, '
            'nose: ${avatar.nose}, ',
          );
          // black Color
          return Stack(
            children: [
              Assets.avatar.preview.face.values[avatar.face].svg(
                package: _package,
                width: double.infinity,
                height: double.infinity,
              ),
              Assets.avatar.preview.nose.values[avatar.nose].svg(
                package: _package,
              ),
              Assets.avatar.preview.mouth.values[avatar.mouth].svg(
                package: _package,
              ),
              Assets.avatar.preview.eyes.values[avatar.eyes].svg(
                package: _package,
              ),
              Assets.avatar.preview.eyebrows.values[avatar.eyebrows].svg(
                package: _package,
              ),
              Assets.avatar.preview.glasses.values[avatar.glasses].svg(
                package: _package,
              ),
              Assets.avatar.preview.hair.values[avatar.hair].svg(
                package: _package,
              ),
              Assets.avatar.preview.accessories.values[avatar.accessories].svg(
                package: _package,
                width: double.infinity,
                height: double.infinity,
              ),
              Assets.avatar.preview.details.values[avatar.details].svg(
                package: _package,
                width: double.infinity,
                height: double.infinity,
              ),
              Assets.avatar.preview.beard.values[avatar.beard].svg(
                package: _package,
                width: double.infinity,
                height: double.infinity,
              ),
              // if (avatar.festival < 6)
              //   Assets.avatar.preview.festival.christmas.values[avatar.festival]
              //       .svg(
              //     package: _package,
              //   ),
              // if (avatar.festival >= 6)
              //   Assets.avatar.preview.festival.halloween
              //       .values[avatar.festival - 6]
              //       .svg(
              //     package: _package,
              //   ),
            ],
          );
        },
      ),
    );
  }

  _face() {
     
  }
}
