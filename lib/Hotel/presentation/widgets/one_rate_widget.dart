import 'package:flutter/material.dart';

class OneRate extends StatelessWidget {
  const OneRate({
    super.key,
    required this.muText,
    required this.mycolor,
  });
  final String muText;
  final Color mycolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration:
          BoxDecoration(color: mycolor, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Text(
          muText,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
