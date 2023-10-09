

import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mac_address/mac_address.dart';

import 'log.dart';

Future<bool> checkInternetConnection() async {
  try {
    final result = await InternetAddress.lookup("google.com");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      debugPrint("connect");
      return true;
    } else {
      debugPrint("disconnect");
      return false;
    }
  } on SocketException catch (_) {
    return false;
  }
}

// String getString(BuildContext context, String key) {
//   return AppLocale.of(context)!.getString(key).toString();
// }
Future<String> getUniqueDeviceID() async {
  String identifier = "";
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  try {
    if (Platform.isAndroid) {
      var build = await deviceInfoPlugin.androidInfo;

      String deviceName = build.model ?? "";
      String deviceVersion = build.version.toString();
       identifier = build.id ?? "";
     // identifier = await GetMac.macAddress ?? "";

      //UUID for Android
    } else if (Platform.isIOS) {
      var data = await deviceInfoPlugin.iosInfo;

      String deviceName = data.name ?? "";
      String deviceVersion = data.systemVersion ?? "";
      identifier = data.identifierForVendor ?? "";
      //UUID for iOS

    }
    Log.d(identifier);
    return identifier;
  } catch (e) {
    // print('Failed to get platform version');
    return identifier;
  }
}

showToast({
  required String text,
  Toast length = Toast.LENGTH_LONG,
  ToastGravity gravity = ToastGravity.BOTTOM,
  Color bgColor = Colors.black,
  Color textColor = Colors.white,
  double fontSize = 16.0,
}) {
  Fluttertoast.showToast(
    msg: text,
    toastLength: length,
    gravity: gravity,
    timeInSecForIosWeb: 3,
    backgroundColor: bgColor,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
