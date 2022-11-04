import 'package:dating_app_login_ui/images.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool animate = false;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 1600),
                    right: animate ? 10 : -30,
                    top: 20,
                    child: Image(image: AssetImage(couple)),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 1600),
                    left: animate ? 10 : -30,
                    top: 70,
                    child: Image(image: AssetImage(heart)),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 1600),
                    left: animate ? 30 : -30,
                    top: 200,
                    child: const Text(
                      "Login to\na lovely\nlife",
                      style: TextStyle(
                        color: Color.fromRGBO(28, 28, 28, 1),
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Enter your mobile number",
                          style: TextStyle(
                              color: Color.fromRGBO(94, 94, 94, 1),
                              fontSize: 16),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "+91",
                            border: InputBorder.none,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                    color: Colors.transparent)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                    color: Colors.transparent)),
                            fillColor: const Color.fromRGBO(240, 240, 240, 1),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
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
                                    builder: (context) => const LoginScreen()));
                          },
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              child: Text("Continue"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Expanded(
                                child: Divider(
                                  height: 50,
                                  endIndent: 10,
                                  thickness: 0.8,
                                  color: Color.fromRGBO(157, 157, 157, 1),
                                ),
                              ),
                              Text(
                                "Or",
                                style: TextStyle(
                                    color: Color.fromRGBO(157, 157, 157, 1)),
                              ),
                              Expanded(
                                child: Divider(
                                  height: 50,
                                  color: Color.fromRGBO(157, 157, 157, 1),
                                  indent: 10,
                                  thickness: 0.8,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  elevation: 0,
                                  side: const BorderSide(
                                    color: Color.fromRGBO(255, 61, 0, 1),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen()));
                                },
                                child: Center(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                    child: Image(image: AssetImage(google)),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  elevation: 0,
                                  side: const BorderSide(
                                    color: Color.fromRGBO(255, 61, 0, 1),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen()));
                                },
                                child: Center(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                    child: Image(image: AssetImage(facebook)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(children: [
                                TextSpan(
                                  text:
                                      "By continue to login, you accept our company’s\n",
                                  style: TextStyle(
                                    color: Color.fromRGBO(187, 187, 187, 1),
                                  ),
                                ),
                                TextSpan(
                                  text: "Term & conditions",
                                  style: TextStyle(
                                    color: Color.fromRGBO(157, 157, 157, 1),
                                  ),
                                ),
                                TextSpan(
                                  text: " and ",
                                  style: TextStyle(
                                    color: Color.fromRGBO(187, 187, 187, 1),
                                  ),
                                ),
                                TextSpan(
                                  text: "Privacy policies",
                                  style: TextStyle(
                                    color: Color.fromRGBO(157, 157, 157, 1),
                                  ),
                                ),
                              ])),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(const Duration(milliseconds: 4000));
  }
}
