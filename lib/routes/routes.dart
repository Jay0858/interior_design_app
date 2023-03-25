import 'package:flutter/material.dart';
import 'package:interior_design_app/boading_screen.dart';
import 'package:interior_design_app/routes/routes_name.dart';

import '../login_screen.dart';

Map<String, WidgetBuilder> appRoutes = {
  RoutesName.firstscreen: (context) => const BoadingScreen(),
  RoutesName.secondscreen: (context) => const LoginScreen(),
};
