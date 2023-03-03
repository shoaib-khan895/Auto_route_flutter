import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:auto_route_flutter/bottom_nav_bar/main_bottom.dart';
import 'package:auto_route_flutter/screens/home_page_screens/second_page.dart';
import 'package:auto_route_flutter/screens/home_page_screens/third_page.dart';
import 'package:auto_route_flutter/screens/third_page_screens/cubit/third_page_provider.dart';
import 'package:auto_route_flutter/screens/third_page_screens/third_one.dart';
import 'package:auto_route_flutter/screens/third_page_screens/third_two.dart';
import '../screens/home_page_screens/first_page.dart';
import '../home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: FirstPage),
    AutoRoute(page: SecondPage),
    AutoRoute(
      path: 'thirdPage',
      page: ThirdPageProvider,
      children: [
        AutoRoute(page: ThirdPage,path: ''),
        AutoRoute(page: ThirdOne),
        AutoRoute(page: ThirdTwo),
      ],
    ),
    CustomRoute(page: MainBottom,path: '/bottomPage')
  ],
)
class $AppRouter {}

// Wildcards
