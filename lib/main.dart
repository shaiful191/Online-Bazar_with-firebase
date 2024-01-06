import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_bazar/pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
    ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return 


        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const Splash_screen(),
    );
    
    
    
    // ScreenUtilInit(
    //   designSize: const Size(360, 690 ),
    //   builder: () {
    //     return MaterialApp(
    //       debugShowCheckedModeBanner: false,
    //       title: 'Flutter Demo',
    //       theme: ThemeData(
    //         primarySwatch: Colors.blue,
    //       ),
    //       home: const Splash_screen(),
    //     );
    //   },

    // );
  }
}

