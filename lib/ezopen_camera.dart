
import 'ezopen_camera_platform_interface.dart';

class EzopenCamera {
  Future<String?> getPlatformVersion() {
    return EzopenCameraPlatform.instance.getPlatformVersion();
  }
}
