import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 78, 78, 1),
      body: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(37, 100, 25, 10),
            child: Text(
              "Advanced",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin:
                EdgeInsets.only(top: size.height * 0.18, right: 30, left: 30),
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
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
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
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
                  width: 30,
                ),
                const Text(
                  "Saibaba\nHospital",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.35),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  const [
                      Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Text("₹",style: TextStyle(fontSize: 24),),
                      ),
                      Text(
                        "5000",
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 17,
                              child: Image.asset("images/done.png"),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "Only Booking charges applied",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(
                              height: 17,
                              child: Image.asset("images/done.png"),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "NO additional charges",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                child: Image.asset("images/cash.png"),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("Cash"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                child: Image.asset("images/credit.png"),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("Debit/Credit card"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                child: Image.asset("images/upi.png"),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("UPI"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                Colors.black, // Text Color (Foreground color)
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 15,bottom: 15),
                            child: Text(
                              'Book Now',
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
