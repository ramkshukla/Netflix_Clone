import 'package:flutter/material.dart';

import '../utils/text.dart';

class TopRatedMovies extends StatelessWidget {
  final List toprated;

  const TopRatedMovies({super.key, required this.toprated});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const modified_text(
            text: 'Top Rated Movies',
            size: 26,
          ),
          const SizedBox(height: 10),
          SizedBox(
              height: 270,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: toprated.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 140,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500' +
                                        toprated[index]['poster_path']),
                              ),
                            ),
                            height: 200,
                          ),
                          const SizedBox(height: 5),
                          modified_text(
                              size: 15,
                              text: toprated[index]['title'] != null
                                  ? toprated[index]['title']
                                  : 'Loading')
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
