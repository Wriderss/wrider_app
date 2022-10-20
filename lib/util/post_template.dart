import 'package:flutter/material.dart';
import 'package:wride_app/util/button.dart';

class PostTemplate extends StatelessWidget {
  final String username;
  final String description;
  final String numberofLikes;
  final String numberofComments;
  final userPost;

  PostTemplate({
    required this.username,
    required this.description,
    required this.numberofLikes,
    required this.numberofComments,
    required this.userPost,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Userpost
          userPost,
          // Username and caption
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(username,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(text: description),
                    TextSpan(
                        text: '#fyp #flutter #wride',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ]))
                ],
              ),
            ),
          ),

          // buttons
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              alignment: Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    icon: Icons.favorite,
                    number: numberofLikes,
                  ),
                  MyButton(icon: Icons.comment, number: numberofComments),
                  MyButton(
                    icon: Icons.share,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
