import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../app_router/router.gr.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
    this.name,
    this.dsg,
  }) : super(key: key);

  final String? name;
  final String? dsg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Third Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Name : $name",
                style: const TextStyle(fontSize: 22),
              ),
              Text(
                "Designation : $dsg",
                style: const TextStyle(fontSize: 22),
              ),
              ElevatedButton(
                onPressed: () {
                  context.navigateTo(FirstRoute(info: 'through navigationTo'));
                },
                child: const Text('navigateToFirst'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.popRoute();
                },
                child: const Text('popRoutethrd'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.replaceRoute(FirstRoute(info: 'replaceRoute'));
                },
                child: const Text('replaceRoute'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange, // Background color
                      onPrimary: Colors.black, // Text Color (Foreground color)
                    ),
                    onPressed: () {
                      context.navigateTo(ThirdOne(info: '3_1'));
                    },
                    child: const Text('Nested one'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange, // Background color
                      onPrimary: Colors.black, // Text Color (Foreground color)
                    ),
                    onPressed: () {
                      context.pushRoute(ThirdTwo(info: 'Nested Third'));
                    },
                    child: const Text('Nested two'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
