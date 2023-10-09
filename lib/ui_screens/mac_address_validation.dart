
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:mac_address/mac_address.dart';
import 'package:unique_identifier/unique_identifier.dart';
import 'package:uuid/uuid.dart';

import '../app_theme.dart';
import '../core/contents/constants.dart';
import '../core/default_button.dart';
import '../core/utils/cache_helper.dart';
import '../core/utils/components.dart';
import '../core/utils/log.dart';
import '../landing/splash_screen_model.dart';
import '../services/app_locale.dart';
import '../theme/style.dart';
import 'home_page.dart';

class MacAddressValidation extends StatefulWidget {
  const MacAddressValidation({super.key});


//  final String identifier;
  @override
  State<MacAddressValidation> createState() => _MacAddressValidationState();
}

class _MacAddressValidationState extends State<MacAddressValidation> {

  String _deviceMAC = "";
  //String macAddress = "";
  String uuIdRandomGenerate = "";
  var _deviceData = <String, dynamic>{};
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  static const MethodChannel _channel = MethodChannel('flutter/platform');
  String randomUUID = "";

  @override
  void initState() {
    super.initState();
 //   initMacAddress();
     String uuIdGen = CacheHelper.getPrefs(key: Constants.uuIdRandomGenerate) ?? "";
    if(uuIdGen.isEmpty){
      generateUuId();
    }
 //   macAddreesFetch();

    //initUniqueIdentifierState();


   // initPlatformState();
  }

  // Future<void> initUniqueIdentifierState() async {
  //   String identifier;
  //   try {
  //     identifier = (await UniqueIdentifier.serial)!;
  //   } on PlatformException {
  //     identifier = 'Failed to get Unique Identifier';
  //   }
  //
  //   if (!mounted) return;
  //
  //   setState(() {
  //     _identifier = identifier;
  //   });
  // }


  Future<void> initPlatformState() async {
    var deviceData = <String, dynamic>{};
    deviceData = _readAndroidBuildData(await deviceInfoPlugin.androidInfo);

    if (!mounted) return;

    setState(() {
      _deviceData = deviceData;
    });
  }
  Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'macAddress':_deviceMAC,
      'version.securityPatch': build.version.securityPatch,
      'version.sdkInt': build.version.sdkInt,
      'version.release': build.version.release,
      'version.previewSdkInt': build.version.previewSdkInt,
      'version.incremental': build.version.incremental,
      'version.codename': build.version.codename,
      'version.baseOS': build.version.baseOS,
      'board': build.board,
      'bootloader': build.bootloader,
      'brand': build.brand,
      'device': build.device,
      'display': build.display,
      'fingerprint': build.fingerprint,
      'hardware': build.hardware,
      'host': build.host,
      'id': build.id,
      'manufacturer': build.manufacturer,
      'model': build.model,
      'product': build.product,
      'supported32BitAbis': build.supported32BitAbis,
      'supported64BitAbis': build.supported64BitAbis,
      'supportedAbis': build.supportedAbis,
      'tags': build.tags,
      'type': build.type,
      'isPhysicalDevice': build.isPhysicalDevice,
      'systemFeatures': build.systemFeatures,
      'displaySizeInches':
      ((build.displayMetrics.sizeInches * 10).roundToDouble() / 10),
      'displayWidthPixels': build.displayMetrics.widthPx,
      'displayWidthInches': build.displayMetrics.widthInches,
      'displayHeightPixels': build.displayMetrics.heightPx,
      'displayHeightInches': build.displayMetrics.heightInches,
      'displayXDpi': build.displayMetrics.xDpi,
      'displayYDpi': build.displayMetrics.yDpi,
      'serialNumber': build.serialNumber,
    };
  }


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery
        .of(context)
        .size;
    return  Scaffold(
      body :
        //Center(
        //child:
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
          //  height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
                children: <Widget>[
                  const SizedBox(height: 130),
                  Container(
                    //margin: EdgeInsets.only(right : 35),
                    child :
                    Align(
                      alignment: Alignment.centerLeft,
                      child :Text(
                        "Please use this mac address for schedules",
                        style: GoogleFonts.poppins(
                            fontSize: size.width * 0.040,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.blackColor,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top : 10),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: AppTheme.white,
                        border: Border.all(color: AppTheme.deactivatedText),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        )),
                    child:

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child :Text(uuIdRandomGenerate,
                            style: GoogleFonts.poppins(
                                fontSize: size.width * 0.027,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.blackColor,
                                decoration: TextDecoration.none),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        ElevatedButton(

                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(AppTheme.blue100),
                          ),
                         child: Text('Copy'),
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: uuIdRandomGenerate))
                                .then((result) {
                              final snackBar = SnackBar(
                                content: Text('Copied to Clipboard'),
                                action: SnackBarAction(
                                  label: 'Undo',
                                  onPressed: () {},
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            });
                          },
                        ),

                      ],

                    ),
                  ),



                  // Container(
                  //   margin: EdgeInsets.only(top : 10),
                  //   child :
                  //   Align(
                  //     alignment: Alignment.centerLeft,
                  //     child :Text(
                  //       "Please use this mac address for schedules",
                  //       style: GoogleFonts.poppins(
                  //           fontSize: size.width * 0.030,
                  //           fontWeight: FontWeight.w600,
                  //           color: AppTheme.deactivatedText,
                  //           decoration: TextDecoration.none),
                  //     ),
                  //   ),
                  // ),
                  DefaultButton(
                    marginTop: 30,
                    marginBottom: 8,
                    text: "Activate Now",
                    function: () async => await macAddressResponse(context),
                  ),
                  const SizedBox(height: 30),



                  // ListView(
                  //   shrinkWrap: true,
                  //   physics: const NeverScrollableScrollPhysics(),
                  //   children: _deviceData.keys.map(
                  //         (String property) {
                  //       return Row(
                  //         children: <Widget>[
                  //           Container(
                  //             padding: const EdgeInsets.all(10),
                  //             child: Text(
                  //               property,
                  //               style: const TextStyle(
                  //                 fontWeight: FontWeight.bold,
                  //               ),
                  //             ),
                  //           ),
                  //           Expanded(
                  //             child: Container(
                  //               padding: const EdgeInsets.symmetric(vertical: 10),
                  //               child: Text(
                  //                 '${_deviceData[property]}',
                  //                 maxLines: 10,
                  //                 overflow: TextOverflow.ellipsis,
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       );
                  //     },
                  //   ).toList(),
                  // ),
                ]
            ),

          ),
        ),
   //   ),
    );
  }

  macAddressResponse(BuildContext context) async {
  //  var identifier = await getUniqueDeviceID();
    //  initPlatformState();
    final connectionStatus = await checkInternetConnection();
    if (connectionStatus) {
      Log.i("identifier $uuIdRandomGenerate");
      final response = await putMacAddressResponse(
          macAddress: uuIdRandomGenerate);

      if (response != null) {
        //Map valueMap = json.decode(response);
        //  LoginResponse  resp = LoginResponse.fromJson(response);
        // Log.i("companyId ${response.device.companyId.toString()}");
        // Log.i("companyName ${ response.tenant.name}");
        CacheHelper.savePrefs(key: Constants.uuIdRandomGenerate, value: uuIdRandomGenerate);
        CacheHelper.savePrefs(key: Constants.companyId, value: response.device.companyId);
        CacheHelper.savePrefs(key: Constants.deviceActivation, value: response.device.isActive);
        CacheHelper.savePrefs(key: Constants.companyName, value: response.tenant.name);

        //  fetchSchedule(response.device.companyId);
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomePage()));

      }else{
        showToast(
          text: "Your mac address is not registered",
          bgColor: errorColor,
          textColor: whiteColor,
        );
      }
    }else {
      showToast(
        text: getString(context).internetProblem,
        bgColor: errorColor,
        textColor: whiteColor,
      );
    }

  }

  // Future<void> macAddreesFetch() async {
  //   var _macAddress = await getUniqueDeviceID();
  //   setState(() => macAddress = _macAddress);
  // }

  // Future<void> initMacAddress() async {
  //   String macAddress;
  //
  //   try {
  //     macAddress = await GetMac.macAddress;
  //   } on PlatformException {
  //     macAddress = 'Error getting the MAC address.';
  //   }
  //
  //
  //
  //   setState(() {
  //     _deviceMAC = macAddress;
  //   });
  // }
  Future<void> generateUuId() async {
  //  String mac = await _channel.invokeMethod('getMAC');
    var uuid = Uuid;

// Generate a v4 (random) id
   String uuId =  const Uuid().v4();
    setState(() {
      uuIdRandomGenerate = uuId;
    });
  }
}
