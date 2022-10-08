import 'package:flutter/material.dart';
import 'package:travel_app/constants/colors.dart';
import 'package:travel_app/constants/images.dart';
import 'package:travel_app/ui/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late var height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(30.0),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(245, 244, 239, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            height: MediaQuery.of(context).size.height / 2.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(
                    height: 40,
                    child: Image.asset(notification),
                  ),
                  Container(
                    height: 40,
                    child: Image.asset(menu),
                  )
                ]),
                const SizedBox(height: 20.0),
                const Text(
                  "Welcome,",
                  style: TextStyle(
                    fontSize: 36.0,
                    color: grey_text,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  "Charlie",
                  style: TextStyle(
                    fontSize: 36.0,
                    color: grey_text,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Theme(
                  data: ThemeData(
                      primaryColor: Colors.redAccent,
                      primaryColorDark: Colors.red),
                  child: const TextField(
                      textCapitalization: TextCapitalization.sentences,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.grey)),
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: grey_text,
                        hintText: "Search",
                      )),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          /*Cities data*/
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  "Saved Places",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: grey_text,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: const Image(image: AssetImage(japan)),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: const Image(image: AssetImage(barcelona)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: const Image(image: AssetImage(greece)),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: const Image(image: AssetImage(rome)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Travel Buddies",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: grey_text,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Adding Travelling buddy"))),
                        child: const Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 3),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Center(
                                child: Icon(
                              Icons.add,
                              size: 50,
                              color: Colors.grey,
                            )),
                          ),
                        ),
                      ),
                      Stack(

                        children: [
                          Card(
                            elevation: 0,
                            color: Colors.green[900],
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(60)),
                            ),
                            child: SizedBox(
                              width: 100,
                              height: 120,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Name",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text("Ashok",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal)),
                                    SizedBox(height: 5),
                                    Text("Age",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                    Text("25",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal)),
                                    SizedBox(height: 5),
                                    Text("Status",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                    Text("Friend",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              ),
                            ),
                          ),const Padding(
                            padding: EdgeInsets.fromLTRB(52, 13, 0, 0),
                            child: Image(image: AssetImage(friend),height: 100),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
