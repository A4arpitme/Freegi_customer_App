import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/generated/l10n.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/theme.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting();

  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => GetMaterialApp(
        title: 'Freegi',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.dashboard,
        getPages: AppRoutes.routes,
        localizationsDelegates: const [
          S.delegate,
        ],
        supportedLocales: [
          ...S.delegate.supportedLocales,
        ],
      ),
    );
  }
}
