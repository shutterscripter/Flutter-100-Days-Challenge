import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:intl/intl.dart';

class WorldTime {
  var location; //location name in ui
  var time;
  late String flag; // url to an asset flag icon
  late String url2 = ""; // location for url for api endpoint
  late bool isDayTime;

  WorldTime({required this.url2, required this.location, required this.flag});

  Future<void> getData() async {
    try {
      var url = Uri.https('worldtimeapi.org', '/api/timezone/$url2');
      var response = await http.get(url);
      var data = jsonDecode(response.body);
      // print("response: ${data}");

      var dateTime = data['datetime'];
      String offSet = data['utc_offset'];
      String offHour = offSet.substring(1, 3);
      String offMin = offSet.substring(4, 6);
      print("hours: $offHour , mins: $offMin");

      //create date time object
      DateTime now = DateTime.parse(dateTime);
      now = now
          .add(Duration(hours: int.parse(offHour), minutes: int.parse(offMin)));

      isDayTime = now.hour > 6 && now.hour < 12 ? true : false;

      //set time property
      time = DateFormat.jm().format(now);
    } catch (e) {
      print("caught error: $e");
      time = "Incorrect data provided";
    }
  }
}
