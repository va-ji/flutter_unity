import 'package:device_info_plus/device_info_plus.dart';

class AndroidInfo {
  final DeviceInfoPlugin _plugin = DeviceInfoPlugin();
  String uuid;
  AndroidInfo({required this.uuid});
  Future<Map<String, String>> get info async {
    AndroidDeviceInfo _androidInfo = await _plugin.androidInfo;
    return {
      'deviceName':
          '${_androidInfo.manufacturer} ${_androidInfo.model} on Android ${_androidInfo.version.release}',
      'deviceUUID': uuid,
      'deviceType': 'ANDROID'
    };
  }
}
