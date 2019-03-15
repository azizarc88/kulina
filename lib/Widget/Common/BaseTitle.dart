import 'package:flutter/material.dart';

class BaseTitle extends StatelessWidget
{
  BaseTitle({this.text});
  final String text;

  @override
  Widget build(BuildContext context)
  {
    return new Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Text(text,
          style: Theme.of(context).textTheme.title),
    );
  }
}
