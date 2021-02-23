import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/router/router.dart';
import 'package:flutter_boilerplate/core/service/locator/locator.dart';
import 'package:flutter_boilerplate/core/service/navigator/navigation_service.dart';
import 'package:flutter_boilerplate/ui/shared/theme_color.dart';
import 'package:flutter_boilerplate/ui/view/splash/splash_screen.dart';
import 'package:overlay_support/overlay_support.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          final FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus.unfocus();
          }
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: MaterialColor(0xff01ADEF, ThemeColor.primarySwatch),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          onGenerateRoute: NavigationRouter.generateRoute,
          navigatorKey: locator<NavigationService>().navigationKey,
          home: SplashScreen(),
        ),
      ),
    );
  }
}
