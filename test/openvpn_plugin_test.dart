import 'package:flutter_test/flutter_test.dart';
import 'package:openvpn_plugin/openvpn_plugin.dart';
import 'package:openvpn_plugin/openvpn_plugin_platform_interface.dart';
import 'package:openvpn_plugin/openvpn_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOpenvpnPluginPlatform
    with MockPlatformInterfaceMixin
    implements OpenvpnPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OpenvpnPluginPlatform initialPlatform = OpenvpnPluginPlatform.instance;

  test('$MethodChannelOpenvpnPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOpenvpnPlugin>());
  });

  test('getPlatformVersion', () async {
    OpenvpnPlugin openvpnPlugin = OpenvpnPlugin();
    MockOpenvpnPluginPlatform fakePlatform = MockOpenvpnPluginPlatform();
    OpenvpnPluginPlatform.instance = fakePlatform;

    expect(await openvpnPlugin.getPlatformVersion(), '42');
  });
}
