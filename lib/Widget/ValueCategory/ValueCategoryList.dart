import 'package:flutter/material.dart';
import 'ValueCategoryItem.dart';
import 'DataValueCategory.dart';

class ValueCategoryList extends StatelessWidget
{
  ValueCategoryList(List<DataValueCategory> this.data);
  final List<DataValueCategory> data;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 250, //bad way, i still need to find out how to wrap content it's child
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
          color: Color.fromARGB(35, 100, 100, 100),
          blurRadius: 25.0,
        ),
      ]),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 100 / 50,
        physics: NeverScrollableScrollPhysics(),
        controller: new ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: data.map((DataValueCategory value) {
          return ValueCategoryItem(data: value);
        }).toList(),
      ),
    );
  }
}
