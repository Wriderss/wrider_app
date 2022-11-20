import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButton extends StatelessWidget {
  final icon;
  final String number;
  MyButton({required this.icon, this.number = ''});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
          ),
          SizedBox(
            height: 10,
          ),
          Text(number)
        ],
      ),
    );
  }
}
