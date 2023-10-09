import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mac_address/mac_address.dart';

import 'app_theme.dart';
import 'core/utils/cache_helper.dart';
import 'landing/splash_screen.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();


  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);




    // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      //     statusBarBrightness: Brightness.light, // For iOS (dark icons)
      // statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: !kIsWeb && Platform.isAndroid ? Brightness.dark : Brightness.dark,
      systemNavigationBarColor: AppTheme.dark_grey,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
    ));


    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      supportedLocales: AppLocalizations.supportedLocales,
    //  locale: Locale(settings.locale, ''),
      localizationsDelegates: AppLocalizations.localizationsDelegates,

      // Method responsible for localeResolutionCallback return  device current locale
      localeResolutionCallback: (currentLocale, supportedLocales) {
        if (currentLocale != null) {
          for (Locale locale in supportedLocales) {
            if (currentLocale.languageCode == locale.languageCode) {
              return currentLocale;
            }
          }
        }
        return supportedLocales.first;
      },

      theme: ThemeData(
        primarySwatch: Colors.grey,
       // textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
      ),
      home: SplashScreen(),  ///production  mode
      //  home: HomePage(),
      //home: PolicyAppHomePage(), /// debug and development mode
    );
  }

}
