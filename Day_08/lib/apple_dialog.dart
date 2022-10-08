import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppleDialog extends StatelessWidget {
  const AppleDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: MaterialButton(
        elevation: 0,
        color: Colors.grey[350],
        onPressed: () => showDialog(
          context: context,
          builder: (BuildContext context) => CupertinoAlertDialog(
            title: const Text("Cupertino Alert Dialog"),
            content: const Text("Do you really want to delete?"),
            actions: [
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Yes"),
              ),
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Close"),
              )
            ],
          ),
        ),
        child: const Text("Apple Dialog"),
      ),
    );
  }
}
