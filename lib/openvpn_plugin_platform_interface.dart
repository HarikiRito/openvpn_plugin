import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'openvpn_plugin_method_channel.dart';

abstract class OpenvpnPluginPlatform extends PlatformInterface {
  /// Constructs a OpenvpnPluginPlatform.
  OpenvpnPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static OpenvpnPluginPlatform _instance = MethodChannelOpenvpnPlugin();

  /// The default instance of [OpenvpnPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelOpenvpnPlugin].
  static OpenvpnPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OpenvpnPluginPlatform] when
  /// they register themselves.
  static set instance(OpenvpnPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
