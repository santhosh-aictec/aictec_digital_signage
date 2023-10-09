
import 'dart:async';
import 'dart:io';

import 'package:aictec_digital_signage/core/contents/constants.dart';
import 'package:aictec_digital_signage/landing/splash_screen_model.dart';
import 'package:aictec_digital_signage/login/login_page.dart';
import 'package:aictec_digital_signage/ui_screens/home_page.dart';
import 'package:aictec_digital_signage/ui_screens/mac_address_validation.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:mac_address/mac_address.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:permission_handler/permission_handler.dart';


import '../app_theme.dart';
import '../core/utils/cache_helper.dart';
import '../core/utils/components.dart';
import '../core/utils/file_storage.dart';
import '../core/utils/log.dart';
import '../services/app_locale.dart';
import '../theme/style.dart';
import '../ui_screens/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool policy = false;
  bool permissionGranted = false;
  var imgUrl = "https://unsplash.com/photos/iEJVyyevw-U/download?force=true";
  bool downloading = false;
  var progressString = "";

  String _platformVersion = 'Unknown';
  String platformVersion = "";

// Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await GetMac.macAddress;
    } on PlatformException {
      platformVersion = 'Failed to get Device MAC Address.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  String identifier = "";

  @override
  void initState() {
    super.initState();
//  _getStoragePermission();
//  Log.i("permissionGranted $permissionGranted");
    // if(permissionGranted){
    // macAddressResponse();
    // }
    //  initPlatformState();
    //  Log.i(_platformVersion);

   // macAddressResponse();
    bool deviceActivation = CacheHelper.getPrefs(key: Constants.deviceActivation) ?? false;
    Timer(
        const Duration(seconds: 3),
            () =>{
              if(deviceActivation){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => HomePage()))
              }else{
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => MacAddressValidation()))
              }

            }

      // }
    );

  }


  Future<void> macAddressResponse() async {
    identifier = await getUniqueDeviceID();
    //  initPlatformState();
    final connectionStatus = await checkInternetConnection();
    if (connectionStatus) {
      Log.i("identifier $identifier");
      final response = await putMacAddressResponse(
          macAddress: identifier);

      if (response != null) {
        //Map valueMap = json.decode(response);
        //  LoginResponse  resp = LoginResponse.fromJson(response);
        Log.i("companyId ${response.device.companyId.toString()}");
        Log.i("companyName ${ response.tenant.name}");
        CacheHelper.savePrefs(key: Constants.companyId, value: response.device.companyId);
        CacheHelper.savePrefs(key: Constants.deviceActivation, value: response.device.isActive);
        CacheHelper.savePrefs(key: Constants.companyName, value: response.tenant.name);

        //  fetchSchedule(response.device.companyId);
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => HomePage()));

      }else{
        // Navigator.of(context).pushReplacement(MaterialPageRoute(
        //     builder: (BuildContext context) => MacAddressValidation(identifier : identifier)));
      }
    }else {
      showToast(
        text: getString(context).internetProblem,
        bgColor: errorColor,
        textColor: whiteColor,
      );
    }

  }

  // Future<void> _getStoragePermission() async {
  //   DeviceInfoPlugin plugin = DeviceInfoPlugin();
  //   AndroidDeviceInfo android = await plugin.androidInfo;
  //   if (android.version.sdkInt! < 33) {
  //     if (await Permission.storage.request().isGranted) {
  //       setState(() {
  //         permissionGranted = true;
  //       });
  //     } else if (await Permission.storage.request().isPermanentlyDenied) {
  //       await openAppSettings();
  //     } else if (await Permission.storage.request().isDenied) {
  //       setState(() {
  //         permissionGranted = false;
  //       });
  //     }
  //   } else {
  //     if (await Permission.storage.request().isGranted) {
  //       setState(() {
  //         permissionGranted = true;
  //       });
  //     } else if (await Permission.storage.request().isPermanentlyDenied) {
  //       await openAppSettings();
  //     } else if (await Permission.storage.request().isDenied) {
  //       setState(() {
  //         permissionGranted = false;
  //       });
  //     }
  //   }
  // }

  // Future<void> downloadFile(String fileName,String imgUrl) async {
  //   Dio dio = Dio();
  //
  //   try {
  //     // Get the application documents directory
  //     Directory appDocDirectory = await getApplicationDocumentsDirectory();
  //
  //     // Create the 'DigitalSignage' directory if it doesn't exist
  //     Directory digitalSignageDir =
  //     await Directory('${appDocDirectory.path}/DigitalSignage/')
  //         .create(recursive: true);
  //
  //     // Define the file path where the downloaded file will be saved
  //     String filePathStr = '${digitalSignageDir.path}$fileName';
  //    // String filePath = '${FileStorage.getExternalDocumentPath()}BigBuckBunny.mp4';
  //     Log.i("filePath $filePathStr");
  //
  //     if (await File(filePathStr).exists()) {
  //       Navigator.of(context).pushReplacement(MaterialPageRoute(
  //           builder: (BuildContext context) => HomePage()));
  //     }else{
  //       // Use try-catch for the file download
  //       await dio.download(imgUrl, filePathStr, onReceiveProgress: (rec, total) {
  //         print("Rec: $rec , Total: $total");
  //
  //         // Update the download progress
  //         setState(() {
  //           downloading = true;
  //           progressString =
  //               ((rec / total) * 100).toStringAsFixed(0) + "%";
  //         });
  //       });
  //       // Download completed, update the UI
  //       setState(() {
  //         downloading = false;
  //         progressString = "Completed";
  //         Navigator.of(context).pushReplacement(MaterialPageRoute(
  //             builder: (BuildContext context) => VideoPlayerConst(filePath :filePathStr)));
  //
  //       });
  //       print("Download completed");
  //     }
  //
  //   } catch (e) {
  //     // Handle any exceptions that may occur during the download
  //     print("Error during download: $e");
  //
  //     // You may want to update the UI to indicate an error here
  //     setState(() {
  //       downloading = false;
  //       progressString = "Error";
  //     });
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    //   print('MAC Address : $_platformVersion\n');

    // Timer(
    //     Duration(seconds: 2),
    //         () =>
    //         Navigator.of(context).pushReplacement(MaterialPageRoute(
    //             builder: (BuildContext context) => LoginPage())));
    // Navigator.of(context).pushReplacement(MaterialPageRoute(
    //     builder: (BuildContext context) => SplashBody())));

    return Container(
        color: Colors.white,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            //margin: EdgeInsets.only(right : 35),
            child: Text(
              "AIC Digital Signage",
              style: GoogleFonts.poppins(
                  fontSize: size.width * 0.050,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.blackColor,
                  decoration: TextDecoration.none),
            ),
          ),
        ));
  }
}



