import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTouchable extends StatelessWidget {
  final Icon icon;
  final String text;

  const CustomTouchable({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /** icon */
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: icon,
            ),

            /** info */
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 0),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            /** button */

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  CupertinoIcons.right_chevron,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
