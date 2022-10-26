import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/text.dart';

class Description extends StatelessWidget {
  final String name, description, bannerurl, posterurl, vote, launchon;

  const Description(
      {super.key,
      required this.name,
      required this.description,
      required this.bannerurl,
      required this.posterurl,
      required this.vote,
      required this.launchon});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: [
        SizedBox(
            height: 250,
            child: Stack(children: [
              Positioned(
                child: SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    bannerurl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  bottom: 10,
                  child: modified_text(text: '⭐ Average Rating - ' + vote)),
            ])),
        const SizedBox(height: 15),
        Container(
            padding: const EdgeInsets.all(10),
            child: modified_text(
                text: name != null ? name : 'Not Loaded', size: 24)),
        Container(
            padding: const EdgeInsets.only(left: 10),
            child: modified_text(text: 'Releasing On - ' + launchon, size: 14)),
        Row(
          children: [
            SizedBox(
              height: 200,
              width: 100,
              child: Image.network(posterurl),
            ),
            Flexible(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: modified_text(text: description, size: 18)),
            ),
          ],
        )
      ]),
    );
  }
}
