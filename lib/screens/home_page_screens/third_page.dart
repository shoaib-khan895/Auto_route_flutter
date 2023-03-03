import 'package:auto_route/auto_route.dart';
import 'package:auto_route_flutter/screens/third_page_screens/cubit/third_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              BlocBuilder<ThirdPageCubit, int>(
                  builder: (context, state) {
                return Text('$state', style: const TextStyle(fontSize: 35, color: Colors.green));
              }),
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
                      context.navigateTo(ThirdRouteProvider(children: [ThirdOne(info: '3_1')]));
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
                      context.navigateTo(ThirdRouteProvider(children: [ThirdTwo(info: '3_1')]));
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
