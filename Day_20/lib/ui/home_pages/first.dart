import 'package:artistic_design/components/feed_card.dart';
import 'package:artistic_design/components/tag_screen.dart';
import 'package:artistic_design/model/post_model.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  List<PostModel> list = [
    PostModel(
        "Aadam Wahid",
        "Product Designer",
        "@everyone Look at beautiful picture...",
        "https://source.unsplash.com/WLUHO9A_xik/1920x1080",
        "16",
        "https://picsum.photos/id/227/200/300"),
    PostModel(
        "Rhyam Ahmed",
        "UI Designer",
        "@mike use this photo for group background",
        "https://random.imagecdn.app/1920/1080",
        "90",
        "https://picsum.photos/id/283/200/300"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            /** Heading */
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Today\'s Monday \n',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                            text: ' July 22, 2023',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      FloatingActionButton.small(
                        onPressed: () {},
                        elevation: 0,
                        child: const Icon(Icons.add),
                      ),
                      const SizedBox(width: 10),
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://picsum.photos/id/237/200/300'),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),

            /** team feed */
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Team Feed",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 20),

            /** tags */
            const Padding(
              padding: EdgeInsets.only(right: 20, left: 20, bottom: 5),
              child: TagScreen(),
            ),

            /** main content */
            SingleChildScrollView(
                child: Column(
              children: [
                SizedBox(
                    height: 478,
                    child: ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (BuildContext context, int index) {
                          return FeedCard(post: list[index]);
                        })),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
