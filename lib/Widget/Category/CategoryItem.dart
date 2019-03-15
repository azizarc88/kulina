import 'package:flutter/material.dart';
import 'DataCategory.dart';

class CategoryItem extends StatelessWidget
{
  CategoryItem({DataCategory this.data});
  DataCategory data;

  @override
  Widget build(BuildContext context)
  {
    return Card(
        elevation: 0.0,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: new Column(
            children: <Widget>[
              Image.asset(
                data.icon,
                width: 65,
              ),
              Text(data.name, style: TextStyle(color: data.color)),
            ],
          ),
        )
    );
  }
}
