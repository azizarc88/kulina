import 'package:flutter/material.dart';
import 'CategoryItem.dart';
import 'DataCategory.dart';

class CategoryList extends StatelessWidget
{
  CategoryList(List<DataCategory> this.data);
  final List<DataCategory> data;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 250, //bad way, i still need to find out how to wrap content it's child
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      alignment: Alignment.center,
      decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
          color: Color.fromARGB(35, 100, 100, 100),
          blurRadius: 25.0,
        ),
      ]),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        primary: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, i)
        {
          if (i < data.length)
            return CategoryItem(data: data[i]);
        },
      )
    );
  }
}
