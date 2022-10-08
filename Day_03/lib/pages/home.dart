import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    //receiving args send my loading screen
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)?.settings.arguments as Map;
    print(data);

    //set bg
    String bgImage = data['isDayTime'] ? 'day' : "night";

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
        child: Column(
          children: [

            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data['location'],
                  style: const TextStyle(
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Text(
              data['time'],
              style: const TextStyle(
                fontSize: 66.0,
              ),
            ),
            Text(bgImage)
          ],
        ),
      )),
    );
  }
}
