import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTileExample extends StatefulWidget {
  const ListTileExample({super.key});

  @override
  State<ListTileExample> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  int _selectedIndex = 0;
  List<String> mulist = [
    "Our recommendations",
    "Rating & recommended",
    "Price & recommended",
    " Distance & recommended",
    "Rating only Price Only",
    "Distance Only"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 400,
      child: ListView.separated(
        itemCount: mulist.length,
        separatorBuilder: (context, index) {
          return Divider(
            endIndent: 20,
            indent: 20,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              mulist[index],
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
            ),
            selected: index == _selectedIndex,
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            trailing: _selectedIndex == index ? Icon(Icons.check) : SizedBox(),
          );
        },
      ),
    );
  }
}
