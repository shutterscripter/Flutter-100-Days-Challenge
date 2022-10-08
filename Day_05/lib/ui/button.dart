import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/constants/colors.dart';

class Button extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color color;
  final Icon icon;

  const Button(
      {Key? key,
      required this.text,
      required this.color, required this.icon,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 80.0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: icon,
          ),
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0))),
          label: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: textColor,
                fontFamily: 'CircularStd',
                fontSize: 17),
          ),
        ),
      ),
    );
  }
}
