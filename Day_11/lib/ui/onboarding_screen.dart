import 'package:expanded_widget/ui/home_page.dart';
import 'package:expanded_widget/ui/onboarding_screens/page_1.dart';
import 'package:expanded_widget/ui/onboarding_screens/page_2.dart';
import 'package:expanded_widget/ui/onboarding_screens/page_3.dart';
import 'package:expanded_widget/ui/onboarding_screens/page_4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3) ? true : false;
              });
            },
            controller: _controller,
            children: const [
              Page1(),
              Page02(),
              Page03(),
              Page04(),
            ],
          ),

          //dot indicator
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //skip
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(3);
                    },
                    child: const Text("Skip"),
                  ),
                  SmoothPageIndicator(controller: _controller, count: 4),
                  //next or done
                  onLastPage?
                  GestureDetector(
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                    },
                    child: const Text("Done"),
                  ):GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: const Text("Next"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
