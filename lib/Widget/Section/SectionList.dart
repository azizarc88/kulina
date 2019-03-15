import 'package:flutter/material.dart';
import 'SectionItem.dart';
import 'DataSection.dart';

class SectionList extends StatelessWidget
{
  SectionList(List<DataSection> this.data);
  final List<DataSection> data;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
      alignment: Alignment.center,
      decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
          color: Color.fromARGB(35, 100, 100, 100),
          blurRadius: 25.0,
        ),
      ]),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, i)
        {
          if (i < data.length)
            return SectionItem(name: data[i].name, icon: data[i].icon);
        },
      )
    );
  }
}
