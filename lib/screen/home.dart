import 'package:flutter/material.dart';
import 'package:wride_app/posts/post_1.dart';
import 'package:wride_app/posts/post_2.dart';
import 'package:wride_app/posts/post_3.dart';

class UserHomePage extends StatelessWidget {
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}
