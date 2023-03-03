// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i6;

import '../screen/base_screen.dart' as _i1;
import '../screen/home.dart' as _i3;
import '../screen/setting.dart' as _i4;

class BottomNavRouter extends _i5.RootStackRouter {
  BottomNavRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    BaseScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BaseScreen(),
      );
    },
    BooksRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    AccountRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    Home.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.Home(),
      );
    },
    Settings.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.Settings(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          BaseScreen.name,
          path: '',
          children: [
            _i5.RouteConfig(
              BooksRouter.name,
              path: 'books',
              parent: BaseScreen.name,
              children: [
                _i5.RouteConfig(
                  Home.name,
                  path: '',
                  parent: BooksRouter.name,
                )
              ],
            ),
            _i5.RouteConfig(
              AccountRouter.name,
              path: 'account',
              parent: BaseScreen.name,
              children: [
                _i5.RouteConfig(
                  Settings.name,
                  path: '',
                  parent: AccountRouter.name,
                )
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.BaseScreen]
class BaseScreen extends _i5.PageRouteInfo<void> {
  const BaseScreen({List<_i5.PageRouteInfo>? children})
      : super(
          BaseScreen.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'BaseScreen';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class BooksRouter extends _i5.PageRouteInfo<void> {
  const BooksRouter({List<_i5.PageRouteInfo>? children})
      : super(
          BooksRouter.name,
          path: 'books',
          initialChildren: children,
        );

  static const String name = 'BooksRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class AccountRouter extends _i5.PageRouteInfo<void> {
  const AccountRouter({List<_i5.PageRouteInfo>? children})
      : super(
          AccountRouter.name,
          path: 'account',
          initialChildren: children,
        );

  static const String name = 'AccountRouter';
}

/// generated route for
/// [_i3.Home]
class Home extends _i5.PageRouteInfo<void> {
  const Home()
      : super(
          Home.name,
          path: '',
        );

  static const String name = 'Home';
}

/// generated route for
/// [_i4.Settings]
class Settings extends _i5.PageRouteInfo<void> {
  const Settings()
      : super(
          Settings.name,
          path: '',
        );

  static const String name = 'Settings';
}
