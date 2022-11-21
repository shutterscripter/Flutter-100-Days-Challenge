import 'dart:convert';
import 'dart:math';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:quote_generator/model/quote_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<QuoteModel> quoteList = [];




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    networkCall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.greenAccent, elevation: 0,),
      body: SafeArea(

        child: ListView.builder(
          itemCount: quoteList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                title: Text(
                  '${quoteList[index].en}',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.cinzel(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        letterSpacing: .3,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Text('- ${quoteList[index].author}',
                    textAlign: TextAlign.end,
                    style: GoogleFonts.princessSofia(
                      textStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    )),
                trailing: IconButton(
                  onPressed: () {
                    FlutterClipboard.copy(quoteList[index].en.toString())
                        .then((value) => {print("quote copied")});
                  },
                  icon: const Icon(Icons.copy),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future networkCall() async {
    var url = Uri.https('programming-quotes-api.herokuapp.com', 'Quotes');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    var responseData = json.decode(response.body);
    for (var singleQuote in responseData) {
      QuoteModel quote = QuoteModel(
          id: singleQuote['id'],
          author: singleQuote['author'],
          en: singleQuote['en']);
      quoteList.add(quote);
    }
  }

  int random(int min, int max) {
    return min + Random().nextInt(max - min);
  }
}
