#include "include/openvpn_plugin/openvpn_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "openvpn_plugin.h"

void OpenvpnPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  openvpn_plugin::OpenvpnPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
