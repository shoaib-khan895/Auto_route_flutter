import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:auto_route_flutter/screens/third_page_screens/cubit/third_page_provider.dart';
import 'package:flutter/material.dart';

import 'app_router/router.gr.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(
                    FirstRoute(
                      info: 'Hello',
                    ),
                  );
                },
                child: const Text('First Page')),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(SecondRoute(name: 'shoaib', emp: 234));
                },
                child: const Text('Second Page')),
            ElevatedButton(
                onPressed: () {
                  context.pushRoute(ThirdRouteProvider(children: [ThirdRoute(name: 'shoaib1', dsg: 'Dev')]));
                },
                child: const Text('Third Page')),
            ElevatedButton(onPressed: (){
              context.pushRoute(MainBottom());
            }, child: Text('Go To Bottom Navigation'))
          ],
        ),
      ),
    );
  }
}
