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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../home_page.dart' as _i1;
import '../screens/home_page_screens/first_page.dart' as _i2;
import '../screens/home_page_screens/second_page.dart' as _i3;
import '../screens/home_page_screens/third_page.dart' as _i4;
import '../screens/third_page_screens/third_one.dart' as _i5;
import '../screens/third_page_screens/third_two.dart' as _i6;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    FirstRoute.name: (routeData) {
      final args = routeData.argsAs<FirstRouteArgs>(
          orElse: () => const FirstRouteArgs());
      return _i7.MaterialPageX<dynamic>(
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
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.SecondPage(
          key: args.key,
          name: args.name,
          emp: args.emp,
        ),
      );
    },
    ThirdRoute.name: (routeData) {
      final args = routeData.argsAs<ThirdRouteArgs>(
          orElse: () => const ThirdRouteArgs());
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ThirdPage(
          key: args.key,
          name: args.name,
          dsg: args.dsg,
        ),
      );
    },
    ThirdOne.name: (routeData) {
      final args =
          routeData.argsAs<ThirdOneArgs>(orElse: () => const ThirdOneArgs());
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ThirdOne(
          key: args.key,
          info: args.info,
        ),
      );
    },
    ThirdTwo.name: (routeData) {
      final args =
          routeData.argsAs<ThirdTwoArgs>(orElse: () => const ThirdTwoArgs());
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: _i6.ThirdTwo(
          key: args.key,
          info: args.info,
        ),
        transitionsBuilder: _i7.TransitionsBuilders.slideTop,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          FirstRoute.name,
          path: '/first-page',
        ),
        _i7.RouteConfig(
          SecondRoute.name,
          path: '/second-page',
        ),
        _i7.RouteConfig(
          ThirdRoute.name,
          path: '/third-page',
        ),
        _i7.RouteConfig(
          ThirdOne.name,
          path: '/third-one',
        ),
        _i7.RouteConfig(
          ThirdTwo.name,
          path: '/third-two',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.FirstPage]
class FirstRoute extends _i7.PageRouteInfo<FirstRouteArgs> {
  FirstRoute({
    _i8.Key? key,
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

  final _i8.Key? key;

  final String? info;

  @override
  String toString() {
    return 'FirstRouteArgs{key: $key, info: $info}';
  }
}

/// generated route for
/// [_i3.SecondPage]
class SecondRoute extends _i7.PageRouteInfo<SecondRouteArgs> {
  SecondRoute({
    _i8.Key? key,
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

  final _i8.Key? key;

  final String? name;

  final int? emp;

  @override
  String toString() {
    return 'SecondRouteArgs{key: $key, name: $name, emp: $emp}';
  }
}

/// generated route for
/// [_i4.ThirdPage]
class ThirdRoute extends _i7.PageRouteInfo<ThirdRouteArgs> {
  ThirdRoute({
    _i8.Key? key,
    String? name,
    String? dsg,
  }) : super(
          ThirdRoute.name,
          path: '/third-page',
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

  final _i8.Key? key;

  final String? name;

  final String? dsg;

  @override
  String toString() {
    return 'ThirdRouteArgs{key: $key, name: $name, dsg: $dsg}';
  }
}

/// generated route for
/// [_i5.ThirdOne]
class ThirdOne extends _i7.PageRouteInfo<ThirdOneArgs> {
  ThirdOne({
    _i8.Key? key,
    String? info,
  }) : super(
          ThirdOne.name,
          path: '/third-one',
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

  final _i8.Key? key;

  final String? info;

  @override
  String toString() {
    return 'ThirdOneArgs{key: $key, info: $info}';
  }
}

/// generated route for
/// [_i6.ThirdTwo]
class ThirdTwo extends _i7.PageRouteInfo<ThirdTwoArgs> {
  ThirdTwo({
    _i8.Key? key,
    String? info,
  }) : super(
          ThirdTwo.name,
          path: '/third-two',
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

  final _i8.Key? key;

  final String? info;

  @override
  String toString() {
    return 'ThirdTwoArgs{key: $key, info: $info}';
  }
}
