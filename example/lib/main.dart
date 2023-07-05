import 'package:ezopen_camera/ezopen_player.dart';
import 'package:ezopen_camera_example/popup_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Hero 动画",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late EZOpenPlayerController _controller;

  TextEditingController appKeyController = TextEditingController();
  TextEditingController accessTokenController = TextEditingController();
  TextEditingController urlController = TextEditingController();

  @override
  void initState() {
    super.initState();
    appKeyController.text = "5d29f148e3d24b1ea8b2074c0cfc8d8a";
    accessTokenController.text =
        "at.b9z6pjlac5cfduy5bvintz9d7q2exp7q-4uadk9xz26-0y8hn83-ibsg8pbws";
    urlController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: appKeyController,
              decoration: const InputDecoration(labelText: "appKey"),
            ),
            TextField(
              controller: accessTokenController,
              decoration: const InputDecoration(labelText: "accessToken"),
            ),
            TextField(
              controller: urlController,
              decoration: const InputDecoration(labelText: "URL"),
            ),
            TextButton(
                onPressed: () {
                  _controller = EZOpenPlayerController(
                      logEnabled: true,
                      appKey: '5d29f148e3d24b1ea8b2074c0cfc8d8a',
                      accessToken:
                          'at.cp9zmyy66e66k3jh47ac2aptayh8kxra-2do6gp9huj-0v3gw3v-j2euiarnp');
                  play();
                },
                child: const Text('打开视频'))
          ],
        ),
      ),
    );
  }

  play() {
    Navigator.push(
        context,
        Popup(
            child: Container(
          child: EZOpenPlayer(
            controller: _controller,
            deviceSerial: 'D75154226',
            verifyCode: 'jsca2020',
            cameraNo: 1,
          ),
        )));
  }
}
