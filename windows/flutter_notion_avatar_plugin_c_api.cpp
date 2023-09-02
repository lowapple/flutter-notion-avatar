#include "include/flutter_notion_avatar/flutter_notion_avatar_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_notion_avatar_plugin.h"

void FlutterNotionAvatarPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_notion_avatar::FlutterNotionAvatarPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
