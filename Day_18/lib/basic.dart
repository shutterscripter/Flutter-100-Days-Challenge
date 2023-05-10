import 'package:flutter/material.dart';

class BasicScreen extends StatefulWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  State<BasicScreen> createState() => _BasicScreenState();
}

class _BasicScreenState extends State<BasicScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          
          /** Appbar*/
          AppBar(
            centerTitle: true,
            title: Column(
              children: const [
                Text(
                  "Jeevan",
                  style: TextStyle(
                    color: Color.fromRGBO(44, 44, 108, 1),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "निष्ठा धृती सत्यम",
                  style: TextStyle(
                      color: Color.fromRGBO(44, 44, 108, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.translate_outlined,
                  color: Color.fromRGBO(31, 73, 171, 1),
                ),
                tooltip: 'Translate',
                onPressed: () {},
              ),
            ],
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Color.fromRGBO(31, 73, 171, 1),
              ),
              onPressed: () {},
            ),
          ),

          /** Location*/
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 120, right: 20, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.blue, width: 2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 47, top: 5),
                  child: Text(
                    "Pick Up Location",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Location",
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.circle,
                        color: Colors.blue,
                        size: 15,
                      )),
                ),
              ],
            ),
          ),

          /** basic panel*/
          Container(
            margin: EdgeInsets.only(top: size.height * 0.52),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(31, 73, 171, 1),
              border: Border.all(width: 2, color: Colors.black),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 50, top: 20),
                  child: Text(
                    "Basic",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                    padding: const EdgeInsets.fromLTRB(15, 10, 30, 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(34, 136, 75, 1),
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: const Text(
                            "G",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Gov. Ambulances",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Booking Charges",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(""),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "₹100",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                    padding: const EdgeInsets.fromLTRB(15, 10, 30, 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(236, 130, 54, 1),
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: const Text(
                            "P",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Private Ambulances",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Booking Charges",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  "*Additional charges applicable",
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "₹100",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 0, bottom: 10, left: 20, right: 20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        "T&C and Privacy Policy",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
