import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomePage extends StatelessWidget {
  Future<void> _handleRefresh() async {
    //reloading takes some time
    return await Future.delayed(
      Duration(seconds: 2),
    );
  }

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: LiquidPullToRefresh(
          height: 200,
          color: Colors.deepPurple,
          backgroundColor: Colors.deepPurple[200],
          animSpeedFactor: 2,
          onRefresh: _handleRefresh,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 300,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 300,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 300,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
