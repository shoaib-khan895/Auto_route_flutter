import 'package:auto_route_flutter/bottom_nav_bar/router/bottom_nav_router.gr.dart';
import 'package:flutter/material.dart';

class MainBottom extends StatelessWidget {
   MainBottom({Key? key}) : super(key: key);
  final _bottomNavRouter = BottomNavRouter();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
        routeInformationParser: _bottomNavRouter.defaultRouteParser(),
        routerDelegate: _bottomNavRouter.delegate());
  }
}
