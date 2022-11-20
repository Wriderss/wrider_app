import 'package:flutter/material.dart';
import 'package:wride_app/util/post_template.dart';

class MyPost3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userPost: Container(
        color: Colors.blue,
      ),
      username: 'example123',
      numberofComments: '4',
      numberofLikes: '20',
      description: 'New blog from wride app.',
    );
  }
}
