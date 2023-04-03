import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'openvpn_plugin_platform_interface.dart';

/// An implementation of [OpenvpnPluginPlatform] that uses method channels.
class MethodChannelOpenvpnPlugin extends OpenvpnPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('openvpn_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
