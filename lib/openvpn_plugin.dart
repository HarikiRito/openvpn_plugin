
import 'openvpn_plugin_platform_interface.dart';

class OpenvpnPlugin {
  Future<String?> getPlatformVersion() {
    return OpenvpnPluginPlatform.instance.getPlatformVersion();
  }
}
