import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:via_green/wed_feature/authentication/sign_screen.dart';
import 'package:via_green/wed_feature/home_layout/layout_screen.dart';
import 'dart:ui_web';
import 'core/components/observer.dart';
import 'core/const/consts.dart';
import 'core/translation/applocal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  debugEmulateFlutterTesterEnvironment;
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCPUtBpZYkBbYuT6WzswFkeWlChNkHlkkg',
      appId: '1:295515903282:android:d9cf69583ab2e802ef732b',
      messagingSenderId: '295515903282',
      projectId: 'via-more-greens',
    ),
  );
  Bloc.observer = await MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Via_More_Greens',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF0C9869),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0C9869)),
        // useMaterial3: true,
      ),
      localizationsDelegates: const [
        AppLocale.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      // localeResolutionCallback: (deviceLocale, supportedLocales) {
      //   myLocale =
      //       deviceLocale; // here you make your app language similar to device language , but you should check whether the localization is supported by your app
      //   language = myLocale!.languageCode;
      //   print("ddddddddddddddddd$language");
      //   return myLocale;
      // },
      home: LayoutScreen(),
    );
  }
}
