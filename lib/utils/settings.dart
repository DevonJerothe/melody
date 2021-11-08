import 'package:get_storage/get_storage.dart';

class AppSettings {
  AppSettings({this.welcomeCompleted = false});

  factory AppSettings.fromSaved() {
    final box = GetStorage();
    final savedSettings = box.read('Settings');
    return (savedSettings != null)
        ? AppSettings.fromJson(savedSettings)
        : AppSettings();
  }
  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      AppSettings(welcomeCompleted: json['welcomeCompleted'] ?? false);

  Map<String, dynamic> toJson() => {
        'welcomeCompleted': welcomeCompleted,
      };

  bool welcomeCompleted;

  Future<void> saveSettings() async {
    final box = GetStorage();
    await box.write('Settings', toJson());
  }
}
