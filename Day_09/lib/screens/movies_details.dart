import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel/model/movie_model.dart';
import 'package:readmore/readmore.dart';

class MoviesDetails extends StatelessWidget {
  MarvelMoviesModel movies;

  MoviesDetails({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(21, 20, 31, 1),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                imageUrl: movies.coverUrl.toString(),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movies.title.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 28),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(
                          Icons.timelapse,
                          color: Color.fromRGBO(187, 187, 187, 1),
                          size: 24,
                        ),
                        const SizedBox(width: 5),
                        Text("${movies.duration.toString()} min",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18)),
                        const SizedBox(width: 50),
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
                      height: 50,
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
                      style: const TextStyle(
                          color: Color.fromRGBO(188, 188, 188, 1)),
                    ),
                    const Divider(
                      height: 50,
                      thickness: 0.8,
                      color: Color.fromRGBO(81, 81, 81, 0.6),
                    ),
                    const Text("Synopsis",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600)),
                    SizedBox(height: 7),
                    Container(
                      child: ReadMoreText(
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
                        style: const TextStyle(
                            color: Color.fromRGBO(188, 188, 188, 1)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
