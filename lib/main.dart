import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/my_app.dart';
import 'screens/app_router.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // await Firebase.initializeApp();

  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    MyApp(
      firstScreen: await AppRouter.initialFirstScreen(),
    ),
  );
}