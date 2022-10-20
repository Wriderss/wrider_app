import 'package:flutter/material.dart';
import 'package:wride_app/util/button.dart';
import 'package:wride_app/util/post_template.dart';

class MyPost1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userPost: Container(
        color: Colors.amber,
      ),
      username: 'adityapainuli_12',
      numberofComments: '4',
      numberofLikes: '20',
      description: 'New blog from wride app.',
    );
  }
}
