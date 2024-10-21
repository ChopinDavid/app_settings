import 'package:flutter/material.dart';
import 'package:app_settings/app_settings.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppSettings appSettings = AppSettings();
  List<Widget> getOpenAppSettingsActions() {
    return [
      ListTile(
        title: const Text('Wifi'),
        minVerticalPadding: 5.0,
        onTap: () => appSettings.openAppSettings(type: AppSettingsType.wifi),
      ),
      ListTile(
        title: const Text("Location"),
        onTap: () =>
            appSettings.openAppSettings(type: AppSettingsType.location),
      ),
      ListTile(
        title: const Text("Security"),
        onTap: () =>
            appSettings.openAppSettings(type: AppSettingsType.security),
      ),
      ListTile(
        title: const Text("Lock & Password"),
        onTap: () =>
            appSettings.openAppSettings(type: AppSettingsType.lockAndPassword),
      ),
      ListTile(
        title: const Text("App Settings"),
        onTap: () =>
            appSettings.openAppSettings(type: AppSettingsType.settings),
      ),
      ListTile(
        title: const Text("Bluetooth"),
        onTap: () =>
            appSettings.openAppSettings(type: AppSettingsType.bluetooth),
      ),
      ListTile(
        title: const Text("Data Roaming"),
        onTap: () =>
            appSettings.openAppSettings(type: AppSettingsType.dataRoaming),
      ),
      ListTile(
        title: const Text("Date"),
        onTap: () => appSettings.openAppSettings(type: AppSettingsType.date),
      ),
      ListTile(
        title: const Text("Display"),
        onTap: () => appSettings.openAppSettings(type: AppSettingsType.display),
      ),
      ListTile(
        title: const Text("Notification"),
        onTap: () =>
            appSettings.openAppSettings(type: AppSettingsType.notification),
      ),
      ListTile(
        title: const Text("Sound"),
        onTap: () => appSettings.openAppSettings(type: AppSettingsType.sound),
      ),
      ListTile(
        title: const Text("Internal Storage"),
        onTap: () =>
            appSettings.openAppSettings(type: AppSettingsType.internalStorage),
      ),
      ListTile(
        title: const Text("Battery optimization"),
        onTap: () => appSettings.openAppSettings(
            type: AppSettingsType.batteryOptimization),
      ),
      ListTile(
        title: const Text("NFC"),
        onTap: () => appSettings.openAppSettings(type: AppSettingsType.nfc),
      ),
      ListTile(
        title: const Text("VPN"),
        onTap: () => appSettings.openAppSettings(
            type: AppSettingsType.vpn, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("Device Settings"),
        onTap: () => appSettings.openAppSettings(
            type: AppSettingsType.device, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("Accessibility"),
        onTap: () => appSettings.openAppSettings(
            type: AppSettingsType.accessibility, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("Developer"),
        onTap: () => appSettings.openAppSettings(
            type: AppSettingsType.developer, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("Hotspot"),
        onTap: () => appSettings.openAppSettings(
            type: AppSettingsType.hotspot, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("APN"),
        onTap: () => appSettings.openAppSettings(
            type: AppSettingsType.apn, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("Alarms"),
        onTap: () => appSettings.openAppSettings(
            type: AppSettingsType.alarm, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("Subscriptions"),
        onTap: () => appSettings.openAppSettings(
            type: AppSettingsType.subscriptions, asAnotherTask: true),
      ),
    ];
  }

  List<Widget> getOpenAppSettingsPanelActions() {
    return [
      ListTile(
        title: const Text('Wifi'),
        minVerticalPadding: 5.0,
        onTap: () =>
            appSettings.openAppSettingsPanel(AppSettingsPanelType.wifi),
      ),
      ListTile(
        title: const Text('NFC'),
        onTap: () => appSettings.openAppSettingsPanel(AppSettingsPanelType.nfc),
      ),
      ListTile(
        title: const Text('Internet connectivity'),
        onTap: () => appSettings
            .openAppSettingsPanel(AppSettingsPanelType.internetConnectivity),
      ),
      ListTile(
        title: const Text('Volume'),
        onTap: () =>
            appSettings.openAppSettingsPanel(AppSettingsPanelType.volume),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final appSettingsActions = getOpenAppSettingsActions();
    final appSettingsPanelActions = getOpenAppSettingsPanelActions();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Settings Example App'),
        ),
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'openAppSettings() options',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(appSettingsActions),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'openAppSettingsPanel() options',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(appSettingsPanelActions),
            ),
          ],
        ),
      ),
    );
  }
}
