#ifndef FLUTTER_PLUGIN_FLUTTER_NOTION_AVATAR_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_NOTION_AVATAR_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_notion_avatar {

class FlutterNotionAvatarPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterNotionAvatarPlugin();

  virtual ~FlutterNotionAvatarPlugin();

  // Disallow copy and assign.
  FlutterNotionAvatarPlugin(const FlutterNotionAvatarPlugin&) = delete;
  FlutterNotionAvatarPlugin& operator=(const FlutterNotionAvatarPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_notion_avatar

#endif  // FLUTTER_PLUGIN_FLUTTER_NOTION_AVATAR_PLUGIN_H_
