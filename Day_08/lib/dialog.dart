import 'package:flutter/material.dart';

class TestDialog extends StatelessWidget {
  const TestDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: MaterialButton(
        color: Colors.blueAccent,
        textColor: Colors.white,
        elevation: 0,
        onPressed: () => showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  title: const Text("Allow \"Maps\" to access your location while you use app?"),
                  content: const Text("Your current location will be displayed on the map and use for direction, nearby search result,and estimated travel times."),
                  actions: [
                    MaterialButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Don't Allow")),
                    MaterialButton(
                        color: Colors.green,
                        textColor: Colors.white,
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Allow"))
                  ],
                )),
        child: const Text("Show Alert Dialog"),
      ),
    );
  }
}
