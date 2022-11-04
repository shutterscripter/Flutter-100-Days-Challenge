import 'package:dating_app_login_ui/images.dart';
import 'package:dating_app_login_ui/login_screen.dart';
import 'package:flutter/material.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  bool animate = false;
  bool buttonState = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Stack(children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 1600),
                      right: animate ? 25 : -400,
                      top: 30,
                      child: Image(image: AssetImage(getting)),
                    ),
                  ]),
                ),
              ),
              Expanded(
                flex: 3,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Stack(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 1600),
                          left: animate ? 0 : -400,
                          child: const Text(
                            "Let's go closer ☺",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 30),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 1600),
                          left: animate ? 0 : -400,
                          top: 35,
                          child: const Text(
                            "The best place to \nmeet your future \npartner.",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 80),
                    child: buttonState
                        ? ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(250, 86, 114, 1),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            },
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                                child: Text("Get Started"),
                              ),
                            ),
                          )
                        : const SizedBox(height: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    setState(() {
      animate = true;
    });
    await Future.delayed(const Duration(milliseconds: 1700));
    setState(() {
      buttonState = true;
    });
  }
}
