

// Must be used each time a route
// is associated to arguments
// This is a way to easily follow arguments.


import 'package:qcs_app/Screen/ScreenDetail/screen_detail.dart';
import 'package:qcs_app/Screen/screen_home.dart';

class MyRouteArguments {}

// An object that will provide an arguments.
abstract class MyRouteArgumentsProvider {
  MyRouteArguments getArguments();
}

class MyNavigator {
  // Get the routing
  static getRoutes() {
    return {
      
      // HOME
      '/home': (context) => const ScreenHome(),
      
      //Detail d'une crypto
      '/detail': (context) => const ScreenDetail(),

    };
  }

}
