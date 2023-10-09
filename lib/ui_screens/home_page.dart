
import 'dart:async';
import 'dart:io';

import 'package:aictec_digital_signage/model/shedule_list_model.dart';
import 'package:aictec_digital_signage/ui_screens/video_player.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mac_address/mac_address.dart';
import 'package:path_provider/path_provider.dart';

import '../app_theme.dart';
import '../core/contents/constants.dart';
import '../core/utils/cache_helper.dart';
import '../core/utils/components.dart';
import '../core/utils/log.dart';
import '../landing/splash_screen_model.dart';
import '../services/app_locale.dart';
import '../theme/style.dart';

import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver{
  String _platformVersion = 'Unknown';
  bool policy = false;
  bool permissionGranted = false;
  var imgUrl = "https://unsplash.com/photos/iEJVyyevw-U/download?force=true";
  bool downloading = false;
  var progressString = "";
  String filePathStr = "";
  Timer? timer;
  Timer? timerRes;
  String identifier = "";
  late List<ScheduleListModel> scheduleList ;

  late List<ScheduleListModel> _scheduleList = <ScheduleListModel>[];

  String platformVersion = "";
  bool isResponse = false;

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



  @override
  void initState() {
    super.initState();
//  _getStoragePermission();
//  Log.i("permissionGranted $permissionGranted");
    // if(permissionGranted){

    WidgetsBinding.instance.addObserver(this);
  //  macAddressResponse();
    var companyId  = CacheHelper.getPrefs(key: Constants.companyId) ?? "";
    fetchSchedule(companyId);
    // }
  }

  //
  // @override
  // void dispose() {
  //   WidgetsBinding.instance.removeObserver(this);
  //   super.dispose();
  // }
  //
  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   switch (state) {
  //     case AppLifecycleState.resumed:
  //       Log.i("app in resumed");
  //       break;
  //     case AppLifecycleState.inactive:
  //       Log.i("app in inactive");
  //       break;
  //     case AppLifecycleState.paused:
  //       Log.i("app in paused");
  //       break;
  //     case AppLifecycleState.detached:
  //       Log.i("app in detached");
  //       break;
  //     case AppLifecycleState.hidden:
  //       Log.i("app in hidden");
  //   }
  // }


  // Future<void> macAddressResponse() async {
  //   identifier = await getUniqueDeviceID();
  //   //initPlatformState();
  //   final connectionStatus = await checkInternetConnection();
  //   if (connectionStatus) {
  //     Log.i("identifier $identifier");
  //     Log.i("macAddress ${await GetMac.macAddress}");
  //     final response = await putMacAddressResponse(
  //         macAddress: identifier);
  //
  //     if (response != null) {
  //       //Map valueMap = json.decode(response);
  //       //  LoginResponse  resp = LoginResponse.fromJson(response);
  //       Log.i("companyId ${response.device.companyId.toString()}");
  //       Log.i("companyName ${ response.tenant.name}");
  //       CacheHelper.savePrefs(key: Constants.companyId, value: response.device.companyId);
  //       CacheHelper.savePrefs(key: Constants.companyName, value: response.tenant.name);
  //
  //       fetchSchedule(response.device.companyId);
  //
  //
  //     }else{
  //       showToast(
  //         text: "Error while login. Please try some other times",
  //         bgColor: errorColor,
  //         textColor: whiteColor,
  //       );
  //     }
  //   }else {
  //     showToast(
  //       text: getString(context).internetProblem,
  //       bgColor: errorColor,
  //       textColor: whiteColor,
  //     );
  //   }
  //
  // }

  Future<List<ScheduleListModel>?> fetchSchedule(int companyId) async {

    final responseSchedule = await requestScheduleList(
        companyId: companyId);
    //  Log.i("responseSchedule $responseSchedule");

    _scheduleList = <ScheduleListModel>[];
    var fileName = "";
    var filePath = "";
    if (responseSchedule != null) {
      //Log.i("fileName ${responseSchedule[0].content.fileName}");
      //Log.i("filePath ${responseSchedule[0].content.filePath}");
      // imgUrl = responseSchedule.content.filePath;
      for(int i =0;i<responseSchedule.length;i++){
        fileName = responseSchedule[i].content.fileName;
        filePath = responseSchedule[i].content.filePath;
      }
      // downloadFile(fileName);
    }
    DateTime now = DateTime.now();
    String formattedDate  = DateFormat('yyyy-MM-dd').format(now);
    String formattedTime  = DateFormat('HH:mm:ss').format(now);

    downloadFile(fileName,filePath);

    setState(() {
      for(int i =0 ;i<responseSchedule!.length;i++){
        if(formattedDate == responseSchedule[i].date) {
          _scheduleList.add(responseSchedule[i]);
        }
      }
      if(_scheduleList.isEmpty){
        isResponse = true;
      }
    //  _scheduleList = responseSchedule;
    });

    return responseSchedule;
  }

  Future<void> downloadFile(String fileName,String imgUrl) async {
    Dio dio = Dio();

    try {
      // Get the application documents directory
      Directory appDocDirectory = await getApplicationDocumentsDirectory();

      // Create the 'DigitalSignage' directory if it doesn't exist
      Directory digitalSignageDir =
      await Directory('${appDocDirectory.path}/DigitalSignage/')
          .create(recursive: true);

      // Define the file path where the downloaded file will be saved
       filePathStr = '${digitalSignageDir.path}$fileName';
      // String filePath = '${FileStorage.getExternalDocumentPath()}BigBuckBunny.mp4';
      Log.i("filePath $filePathStr");

      if (await File(filePathStr).exists()) {
        // Navigator.of(context).pushReplacement(MaterialPageRoute(
        //     builder: (BuildContext context) => HomePage(filePath :filePathStr)));
      }else{
        // Use try-catch for the file download
        await dio.download(imgUrl, filePathStr, onReceiveProgress: (rec, total) {
          print("Rec: $rec , Total: $total");

          // Update the download progress
          setState(() {
            downloading = true;
            progressString =
                ((rec / total) * 100).toStringAsFixed(0) + "%";
          });
        });
        // Download completed, update the UI
        setState(() {
          downloading = false;
          progressString = "Completed";
          // Navigator.of(context).pushReplacement(MaterialPageRoute(
          //     builder: (BuildContext context) => VideoPlayerConst(filePath :filePathStr)));

        });
        print("Download completed");
      }

    } catch (e) {
      // Handle any exceptions that may occur during the download
      print("Error during download: $e");

      // You may want to update the UI to indicate an error here
      setState(() {
        downloading = false;
        progressString = "Error";
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    timerRes = Timer.periodic(Duration(minutes: 15), (Timer t){
      var companyId  = CacheHelper.getPrefs(key: Constants.companyId) ?? "";
      fetchSchedule(companyId);
    });


    timer = Timer.periodic(Duration(seconds: 35), (Timer t){

      Log.i("Timer $t");

      for(int i =0;i<_scheduleList.length;i++){
        DateTime now = DateTime.now();
        String formattedTime = DateFormat('HH:mm').format(now);
        List<String> splitTime = _scheduleList[i].startTime.split(':');
        var splitH = "${splitTime[0]}:${splitTime[1]}";
        if( splitH == formattedTime){
          int hour = int.parse(splitTime[0]);
          int mintues = int.parse(splitTime[1]);
          Log.i("hour $hour");
          Log.i("mintues $mintues");
          Log.i("filePathStr $filePathStr");
          // Calculate the time until 4 PM today
          final playNow = DateTime.now();
          final fourPMToday = DateTime(playNow.year, playNow.month, playNow.day, hour,mintues);

          // Calculate the duration until 4 PM
          final timeUntilFourPM = fourPMToday.isBefore(playNow)
              ? fourPMToday.add(Duration(seconds: 5)).difference(playNow)
              : fourPMToday.difference(playNow);

          // Create a timer to trigger video playback at 4 PM
          Timer(timeUntilFourPM, () {
            runApp(MaterialApp(
              home: VideoPlayerConst(filePath: filePathStr,
              ),
            ));
          });
          Log.i(formattedTime);
          Log.i(_scheduleList[i].startTime);
        }
      }
    });



    return Scaffold(

      appBar: AppBar(
        toolbarHeight: size.width * 0.15,
        centerTitle: false,
        titleSpacing: 0.0,
        automaticallyImplyLeading: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark,
          // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
          padding: EdgeInsets.only(top: 25, left: 15),
          child:  Text("Schedule",
            style: GoogleFonts.urbanist(
              fontSize: size.width * 0.052,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),

        // leading: IconButton(
        //     padding: EdgeInsets.only(top: 25, left: 20),
        //     icon: SvgPicture.asset('assets/images/ic_left_arrow_icon.svg'),
        //     //   ),
        //     onPressed: () => {
        //
        //       Navigator.pop(context)
        //       //_scaffoldKey.currentState?.openDrawer()
        //     }
        //
        // ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[

              Container(
                height: size.height,
                child : _scheduleList.isNotEmpty ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: _scheduleList.length,
                    itemBuilder: (BuildContext context, int index) {

                      return Card(
                          child : Container(
                            margin: EdgeInsets.only(top : 2,left: 5,right: 5,bottom: 2),
                            padding: EdgeInsets.only(top : 25,left: 5,right: 5,bottom: 25),
                            child:Column(

                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child :Text("${_scheduleList[index].content.fileName}",
                                    style: GoogleFonts.poppins(
                                      fontSize: size.width * 0.040,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.blackColor,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child :Container(
                                    margin: EdgeInsets.only(top : 20),
                                    child: Text(
                                      "${DateFormat("dd MMM, yyyy").format(DateTime.parse("${_scheduleList[index].date}"))} ${DateFormat("hh:mm a").format(DateTime.parse("${_scheduleList[index].date} ${_scheduleList[index].startTime}"))}",
                                      style: GoogleFonts.poppins(
                                        fontSize: size.width * 0.035,
                                        fontWeight: FontWeight.w600,
                                        color: AppTheme.deactivatedText,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      );
                    }) :
                Center(
                  child: isResponse ? Text(
                    "Schedules not found",
                    style: GoogleFonts.poppins(
                        fontSize: size.width * 0.040,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.gray200,
                        decoration: TextDecoration.none),
                    textAlign: TextAlign.center,
                  ) : CircularProgressIndicator(),

                ),
              )


            ]
        ),

      ),
    );

  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
    timerRes?.cancel();
  }

  checkForNewSharedLists(int hour,int mintues) {
    // int hour = int.parse(splitTime[0]);
    // int mint = int.parse(splitTime[1]);


  }
}
