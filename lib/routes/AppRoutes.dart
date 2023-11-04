import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:property/constant/Constants.dart';
import 'package:property/screens/AboutUsPage.dart';
import 'package:property/screens/AgentPage.dart';
import 'package:property/screens/FootterPage.dart';
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
      page: () => HomePage(),
    ),
    GetPage(
      name: Constants.footerPage,
      page: () => FootterPage(),
    ),
    GetPage(
      name: Constants.aboutUsPage,
      page: () => AboutUsPage(),
    ),
    GetPage(
      name: Constants.agentPage,
      page: () => AgentPage(),
    ),
  ];
}
