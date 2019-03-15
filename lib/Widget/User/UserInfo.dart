import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserInfo extends StatelessWidget {
  UserInfo({this.profile, this.name, this.saldo});
  final String name, profile;
  final int saldo;
  final format = new NumberFormat("0,000", "en");

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text("Hi, $name",
                        style: Theme.of(context).textTheme.title),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                    child: Text("Saldo Rp. " + format.format(saldo),
                        style: Theme.of(context).textTheme.caption),
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: new Container(
                    width: 40,
                    height: 40,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(profile)))),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: new Divider(),
          )
        ],
      ),
    );
  }
}
