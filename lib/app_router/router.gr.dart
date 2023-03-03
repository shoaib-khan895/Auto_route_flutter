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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../bottom_nav_bar/main_bottom.dart' as _i5;
import '../home_page.dart' as _i1;
import '../screens/home_page_screens/first_page.dart' as _i2;
import '../screens/home_page_screens/second_page.dart' as _i3;
import '../screens/home_page_screens/third_page.dart' as _i6;
import '../screens/third_page_screens/cubit/third_page_provider.dart' as _i4;
import '../screens/third_page_screens/third_one.dart' as _i7;
import '../screens/third_page_screens/third_two.dart' as _i8;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    FirstRoute.name: (routeData) {
      final args = routeData.argsAs<FirstRouteArgs>(
          orElse: () => const FirstRouteArgs());
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.FirstPage(
          key: args.key,
          info: args.info,
        ),
      );
    },
    SecondRoute.name: (routeData) {
      final args = routeData.argsAs<SecondRouteArgs>(
          orElse: () => const SecondRouteArgs());
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.SecondPage(
          key: args.key,
          name: args.name,
          emp: args.emp,
        ),
      );
    },
    ThirdRouteProvider.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ThirdPageProvider(),
      );
    },
    MainBottom.name: (routeData) {
      final args = routeData.argsAs<MainBottomArgs>(
          orElse: () => const MainBottomArgs());
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.MainBottom(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ThirdRoute.name: (routeData) {
      final args = routeData.argsAs<ThirdRouteArgs>(
          orElse: () => const ThirdRouteArgs());
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.ThirdPage(
          key: args.key,
          name: args.name,
          dsg: args.dsg,
        ),
      );
    },
    ThirdOne.name: (routeData) {
      final args =
          routeData.argsAs<ThirdOneArgs>(orElse: () => const ThirdOneArgs());
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.ThirdOne(
          key: args.key,
          info: args.info,
        ),
      );
    },
    ThirdTwo.name: (routeData) {
      final args =
          routeData.argsAs<ThirdTwoArgs>(orElse: () => const ThirdTwoArgs());
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.ThirdTwo(
          key: args.key,
          info: args.info,
        ),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          FirstRoute.name,
          path: '/first-page',
        ),
        _i9.RouteConfig(
          SecondRoute.name,
          path: '/second-page',
        ),
        _i9.RouteConfig(
          ThirdRouteProvider.name,
          path: 'thirdPage',
          children: [
            _i9.RouteConfig(
              ThirdRoute.name,
              path: '',
              parent: ThirdRouteProvider.name,
            ),
            _i9.RouteConfig(
              ThirdOne.name,
              path: 'third-one',
              parent: ThirdRouteProvider.name,
            ),
            _i9.RouteConfig(
              ThirdTwo.name,
              path: 'third-two',
              parent: ThirdRouteProvider.name,
            ),
          ],
        ),
        _i9.RouteConfig(
          MainBottom.name,
          path: '/bottomPage',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.FirstPage]
class FirstRoute extends _i9.PageRouteInfo<FirstRouteArgs> {
  FirstRoute({
    _i10.Key? key,
    String? info,
  }) : super(
          FirstRoute.name,
          path: '/first-page',
          args: FirstRouteArgs(
            key: key,
            info: info,
          ),
        );

  static const String name = 'FirstRoute';
}

class FirstRouteArgs {
  const FirstRouteArgs({
    this.key,
    this.info,
  });

  final _i10.Key? key;

  final String? info;

  @override
  String toString() {
    return 'FirstRouteArgs{key: $key, info: $info}';
  }
}

/// generated route for
/// [_i3.SecondPage]
class SecondRoute extends _i9.PageRouteInfo<SecondRouteArgs> {
  SecondRoute({
    _i10.Key? key,
    String? name,
    int? emp,
  }) : super(
          SecondRoute.name,
          path: '/second-page',
          args: SecondRouteArgs(
            key: key,
            name: name,
            emp: emp,
          ),
        );

  static const String name = 'SecondRoute';
}

class SecondRouteArgs {
  const SecondRouteArgs({
    this.key,
    this.name,
    this.emp,
  });

  final _i10.Key? key;

  final String? name;

  final int? emp;

  @override
  String toString() {
    return 'SecondRouteArgs{key: $key, name: $name, emp: $emp}';
  }
}

/// generated route for
/// [_i4.ThirdPageProvider]
class ThirdRouteProvider extends _i9.PageRouteInfo<void> {
  const ThirdRouteProvider({List<_i9.PageRouteInfo>? children})
      : super(
          ThirdRouteProvider.name,
          path: 'thirdPage',
          initialChildren: children,
        );

  static const String name = 'ThirdRouteProvider';
}

/// generated route for
/// [_i5.MainBottom]
class MainBottom extends _i9.PageRouteInfo<MainBottomArgs> {
  MainBottom({_i10.Key? key})
      : super(
          MainBottom.name,
          path: '/bottomPage',
          args: MainBottomArgs(key: key),
        );

  static const String name = 'MainBottom';
}

class MainBottomArgs {
  const MainBottomArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'MainBottomArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.ThirdPage]
class ThirdRoute extends _i9.PageRouteInfo<ThirdRouteArgs> {
  ThirdRoute({
    _i10.Key? key,
    String? name,
    String? dsg,
  }) : super(
          ThirdRoute.name,
          path: '',
          args: ThirdRouteArgs(
            key: key,
            name: name,
            dsg: dsg,
          ),
        );

  static const String name = 'ThirdRoute';
}

class ThirdRouteArgs {
  const ThirdRouteArgs({
    this.key,
    this.name,
    this.dsg,
  });

  final _i10.Key? key;

  final String? name;

  final String? dsg;

  @override
  String toString() {
    return 'ThirdRouteArgs{key: $key, name: $name, dsg: $dsg}';
  }
}

/// generated route for
/// [_i7.ThirdOne]
class ThirdOne extends _i9.PageRouteInfo<ThirdOneArgs> {
  ThirdOne({
    _i10.Key? key,
    String? info,
  }) : super(
          ThirdOne.name,
          path: 'third-one',
          args: ThirdOneArgs(
            key: key,
            info: info,
          ),
        );

  static const String name = 'ThirdOne';
}

class ThirdOneArgs {
  const ThirdOneArgs({
    this.key,
    this.info,
  });

  final _i10.Key? key;

  final String? info;

  @override
  String toString() {
    return 'ThirdOneArgs{key: $key, info: $info}';
  }
}

/// generated route for
/// [_i8.ThirdTwo]
class ThirdTwo extends _i9.PageRouteInfo<ThirdTwoArgs> {
  ThirdTwo({
    _i10.Key? key,
    String? info,
  }) : super(
          ThirdTwo.name,
          path: 'third-two',
          args: ThirdTwoArgs(
            key: key,
            info: info,
          ),
        );

  static const String name = 'ThirdTwo';
}

class ThirdTwoArgs {
  const ThirdTwoArgs({
    this.key,
    this.info,
  });

  final _i10.Key? key;

  final String? info;

  @override
  String toString() {
    return 'ThirdTwoArgs{key: $key, info: $info}';
  }
}
