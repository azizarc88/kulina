import 'package:flutter/material.dart';
import 'DataValueCategory.dart';

class ValueCategoryItem extends StatelessWidget
{
  ValueCategoryItem({DataValueCategory this.data});
  DataValueCategory data;

  @override
  Widget build(BuildContext context)
  {
    return Card(
        elevation: 0.0,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            alignment: Alignment.centerLeft,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                  child: Text(data.name,
                      style: Theme.of(context).textTheme.title),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 2, 0, 5),
                  child: Text(data.desc,
                      style: Theme.of(context).textTheme.caption),
                ),
                Image.asset(
                  data.icon,
                  height: 12,
                ),
              ],
            ),
          )
        )
    );
  }
}
