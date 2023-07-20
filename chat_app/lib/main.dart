import 'package:chat_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final routesClass = Routes_();
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routeInformationProvider:
                    routesClass.routes.routeInformationProvider,
                routerDelegate: routesClass.routes.routerDelegate,
                routeInformationParser:
                    routesClass.routes.routeInformationParser,
        );
      },
    );
  }
}
