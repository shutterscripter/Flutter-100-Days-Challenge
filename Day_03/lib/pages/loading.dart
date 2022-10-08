import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_clock/service/world_time.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setUpWorldTime() async {
    WorldTime instance = WorldTime(
        url2: 'Asia/Kolkata', location: 'Kolkata', flag: "Kolkata.png");
    await instance.getData();

    //redirecting to home page
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      "location": instance.location,
      "flag": instance.flag,
      "time": instance.time,
      "isDayTime": instance.isDayTime,
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.black,
          size: 70.0,
        ),
      ),
    );
  }
}
