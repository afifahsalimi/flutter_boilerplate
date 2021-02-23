import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/constant/string_constant.dart';
import 'package:flutter_boilerplate/core/viewmodel/startup_viewmodel.dart';
import 'package:flutter_boilerplate/ui/view/base_view.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<StartupViewModel>(
      onModelReady: (viewModel) => viewModel.setupPage(),
      builder: (context, viewModel, child) =>
          Scaffold(body: Center(child: Text(ConstantString.appName))),
    );
  }
}
