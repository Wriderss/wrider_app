import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomExploreAppBar extends StatelessWidget {
  const CustomExploreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: 38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
            ),
            child: TextField(
              cursorColor: Colors.grey.shade500,
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  size: 24,
                  color: Colors.grey.shade500,
                ),
              ),
              style: TextStyle(color: Colors.black, fontSize: 16.5),
            )));
  }
}
