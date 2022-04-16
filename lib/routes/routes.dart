import 'package:covid19_monitoring/view/screens/home_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  // initialRoute
  static const home = Routes.homeScreen;
  // getPages

  static final routes = [
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
    ),
  ];
}

class Routes {
  static const homeScreen = '/homeScreen';
}
