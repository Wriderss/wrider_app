import 'package:flutter/material.dart';
import 'package:wride_app/util/post_template.dart';

class MyPost2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userPost: Container(
        color: Colors.red,
      ),
      username: 'arya_shah.23',
      numberofComments: '3',
      numberofLikes: '15',
      description: 'Blog description example',
    );
  }
}
