import 'package:flutter_boilerplate/core/router/router.dart';
import 'package:flutter_boilerplate/core/service/locator/locator.dart';
import 'package:flutter_boilerplate/core/service/navigator/navigation_service.dart';
import 'package:flutter_boilerplate/core/viewmodel/base_model.dart';

class StartupViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();
  void setupPage() {
    Future.delayed(
        Duration(milliseconds: 500),
        () => _navigationService
            .pushAndRemoveUntil(NavigationRouter.landingRoute));
  }
}
