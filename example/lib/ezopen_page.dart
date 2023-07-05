import 'package:ezopen_camera/ezopen_player.dart';
import 'package:flutter/material.dart';

class EZOpenPage extends StatelessWidget {
  final EZOpenPlayerController _controller;

  EZOpenPage({super.key})
      : _controller = EZOpenPlayerController(
            appKey: '5d29f148e3d24b1ea8b2074c0cfc8d8a',
            accessToken:
                'at.b9z6pjlac5cfduy5bvintz9d7q2exp7q-4uadk9xz26-0y8hn83-ibsg8pbws');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('乐橙云播放器'),
      ),
      body: Center(
        child: EZOpenPlayer(
          controller: _controller,
          deviceSerial: 'D75154226',
          verifyCode: 'jsca2020',
          cameraNo: 1,
        ),
      ),
    );
  }
}
