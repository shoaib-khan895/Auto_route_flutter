import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:auto_route_flutter/screens/home_page_screens/second_page.dart';
import 'package:auto_route_flutter/screens/home_page_screens/third_page.dart';
import 'package:auto_route_flutter/screens/third_page_screens/third_one.dart';
import 'package:auto_route_flutter/screens/third_page_screens/third_two.dart';
import '../screens/home_page_screens/first_page.dart';
import '../home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: FirstPage,),
    AutoRoute(page: SecondPage),
    AutoRoute(page: ThirdPage),
    AutoRoute(page: ThirdOne),
    CustomRoute(page: ThirdTwo,transitionsBuilder: TransitionsBuilders.slideTop),
    // AutoRoute(
    //   path: 'thirdPage',
    //   page: EmptyRouterPage,
    //   children: [
    //
    //   ],
    // ),
  ],
)
class $AppRouter {}

// Wildcards
