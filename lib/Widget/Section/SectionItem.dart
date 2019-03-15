import 'package:flutter/material.dart';

class SectionItem extends StatelessWidget
{
  SectionItem({this.icon, this.name});
  final String icon, name;

  @override
  Widget build(BuildContext context)
  {
    return new Container(
      width: 110,
      height: 110,
      child: new Card(
        elevation: 0.0,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: new Column(
            children: <Widget>[
              Image.asset(
                icon,
                width: 70,
              ),
              Text(name, style: Theme.of(context).textTheme.subhead),
            ],
          ),
        )
      ),
    );
  }
}
