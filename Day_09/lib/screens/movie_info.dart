import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel/model/movie_model.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieInfo extends StatelessWidget {
  MarvelMoviesModel movies;

  MovieInfo({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(21, 20, 31, 1),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              ClipPath(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: CachedNetworkImage(
                    placeholder: (context, widget) =>
                    const CircularProgressIndicator(
                      color: Colors.white,
                    ),
                    imageUrl: movies.coverUrl.toString(),
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 2.2,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    colorBlendMode: BlendMode.multiply,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 100),
                    child: Center(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Uri _url = Uri.parse(
                                  movies.trailerUrl.toString());
                              _launchUrl(url: _url);
                            },
                            icon: const Icon(
                              Icons.play_circle,
                              color: Color.fromRGBO(240, 19, 30, 1),
                              size: 65,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [Colors.grey.withOpacity(0.3), Colors.black])),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(movies.title.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 24)),
                const SizedBox(height: 7),
                Row(
                  children: [
                    const Icon(
                      Icons.timelapse,
                      color: Color.fromRGBO(187, 187, 187, 1),
                      size: 24,
                    ),
                    const SizedBox(width: 5),
                    Text("${movies.duration.toString()} min",
                        style:
                        const TextStyle(color: Colors.white, fontSize: 18)),
                    const SizedBox(width: 40),
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(187, 187, 187, 1),
                      size: 24,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "9.0 (IMDb)",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 40,
                  thickness: 0.8,
                  color: Color.fromRGBO(81, 81, 81, 0.6),
                ),
                const Text("Release date",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
                const SizedBox(height: 7),
                Text(
                  movies.releaseDate.toString(),
                  style:
                  const TextStyle(color: Color.fromRGBO(188, 188, 188, 1)),
                ),
                const Divider(
                  height: 40,
                  thickness: 0.8,
                  color: Color.fromRGBO(81, 81, 81, 0.6),
                ),
                const Text("Synopsis",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 7),
                ReadMoreText(
                  movies.overview.toString() == "null"
                      ? "Information not uploaded..."
                      : movies.overview.toString(),
                  moreStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  lessStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  trimCollapsedText: "Read More..",
                  trimExpandedText: "Read Less..",
                  style:
                  const TextStyle(color: Color.fromRGBO(188, 188, 188, 1)),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Future<void> _launchUrl({var url}) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
