import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:auto_route_flutter/bottom_nav_bar/screen/base_screen.dart';
import 'package:auto_route_flutter/bottom_nav_bar/screen/home.dart';
import 'package:auto_route_flutter/bottom_nav_bar/screen/setting.dart';
//
// @MaterialAutoRouter(
//   replaceInRouteName: 'Page,Route',
//   routes: <AutoRoute>[
//     AutoRoute(page: BaseScreen, initial: true, children: [
//       AutoRoute(page: Home),
//       AutoRoute(page: Settings),
//     ])
//   ],
// )

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: "",
      page: BaseScreen,
      children: [
        AutoRoute(
          path: "books",
          name: "BooksRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: Home),
          ],
        ),
        AutoRoute(
          path: "account",
          name: "AccountRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: Settings),
          ],
        ),
      ],
    ),
  ],
)
class $BottomNavRouter {}

