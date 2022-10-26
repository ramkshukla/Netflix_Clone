import 'package:flutter/material.dart';

import '../description.dart';
import '../utils/text.dart';

class TV extends StatelessWidget {
  final List tv;

  const TV({super.key, required this.tv});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const modified_text(
            text: 'Popular TV Shows',
            size: 26,
          ),
          const SizedBox(height: 10),
          SizedBox(
              // color: Colors.red,
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tv.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Description(
                              name: tv[index]['original_name'],
                              bannerurl: 'https://image.tmdb.org/t/p/w500' +
                                  tv[index]['backdrop_path'],
                              posterurl: 'https://image.tmdb.org/t/p/w500' +
                                  tv[index]['poster_path'],
                              description: tv[index]['overview'],
                              vote: tv[index]['vote_average'].toString(),
                              launchon: "02-02-2022",
                            ),
                          ),
                        )
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        // color: Colors.green,
                        width: 250,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500' +
                                            tv[index]['backdrop_path']),
                                    fit: BoxFit.cover),
                              ),
                              height: 140,
                            ),
                            const SizedBox(height: 5),
                            modified_text(
                                size: 15,
                                text: tv[index]['original_name'] != null
                                    ? tv[index]['original_name']
                                    : 'Loading')
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
