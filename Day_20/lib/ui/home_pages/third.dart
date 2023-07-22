import 'package:artistic_design/components/custom_touchable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /** Heading */
            const Padding(
              padding:
                  EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 30),
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            /** Profile info */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://picsum.photos/id/237/1920/1080'),
                  radius: 70,
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Jenny Wilson",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Project Manager",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Edit Profile"),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 50),
            /** custom buttons */
            const CustomTouchable(
                icon: Icon(CupertinoIcons.person),
                text: "Personal Information"),
            const SizedBox(height: 10),
            const CustomTouchable(
                icon: Icon(Icons.password), text: "Change Password"),
            const SizedBox(height: 10),
            const CustomTouchable(
                icon: Icon(Icons.shield_moon_sharp), text: "Theme"),
            const SizedBox(height: 30),
            const CustomTouchable(icon: Icon(Icons.logout), text: "Logout"),
          ],
        ),
      ),
    );
  }
}
