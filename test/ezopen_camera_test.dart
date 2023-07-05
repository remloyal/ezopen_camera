import 'package:flutter_test/flutter_test.dart';
import 'package:ezopen_camera/ezopen_camera.dart';
import 'package:ezopen_camera/ezopen_camera_platform_interface.dart';
import 'package:ezopen_camera/ezopen_camera_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockEzopenCameraPlatform
    with MockPlatformInterfaceMixin
    implements EzopenCameraPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final EzopenCameraPlatform initialPlatform = EzopenCameraPlatform.instance;

  test('$MethodChannelEzopenCamera is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelEzopenCamera>());
  });

  test('getPlatformVersion', () async {
    EzopenCamera ezopenCameraPlugin = EzopenCamera();
    MockEzopenCameraPlatform fakePlatform = MockEzopenCameraPlatform();
    EzopenCameraPlatform.instance = fakePlatform;

    expect(await ezopenCameraPlugin.getPlatformVersion(), '42');
  });
}
