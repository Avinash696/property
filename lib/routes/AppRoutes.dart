import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:property/constant/Constants.dart';
import 'package:property/screens/HomePage.dart';

import '../screens/SplashPage.dart';


class AppRoutes {

  final getPages = [
  GetPage(
  name: Constants.splash,
  page: () => const SplashPage(),
  ),
    GetPage(
  name: Constants.home,
  page: () =>  HomePage(),
  ),

  ];
}
