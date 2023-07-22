import 'package:artistic_design/components/reaction.dart';
import 'package:artistic_design/model/post_model.dart';
import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  final PostModel post;

  const FeedCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /** profile info*/
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 22,
                    backgroundImage: NetworkImage(post.profile),
                ),
                const SizedBox(width: 10),
                RichText(
                  text: TextSpan(
                    text: '${post.name} \n',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    children: [
                      TextSpan(
                          text: post.desig,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          /** caption */
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              post.desc,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 5),

          /** Image */
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.3,
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.9,
              color: Colors.black,
              child: Image.network(
                post.image,
                fit: BoxFit.fill,
              ),
            ),
          ),

          /** Emojis Reaction */
          Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
            child: Row(
              children: [
                const Reaction(
                  count: "12",
                  emoji: "😍",
                ),
                const SizedBox(width: 10),
                Reaction(
                  count: post.likeCount,
                  emoji: "👍",
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
