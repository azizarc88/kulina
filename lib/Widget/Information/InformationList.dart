import 'package:flutter/material.dart';
import 'InformationItem.dart';
import 'DataInformation.dart';

class InformationList extends StatelessWidget
{
  InformationList(List<DataInformation> this.data);
  final List<DataInformation> data;

  @override
  Widget build(BuildContext context)
  {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
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
            {
              if (i == 0)
              {
                return Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: InformationItem(data: data[i]),
                );
              }
              else if (i == (data.length - 1))
              {
                return Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: InformationItem(data: data[i]),
                );
              }
              else
              {
                return Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: InformationItem(data: data[i]),
                );
              }
            }
          },
        )
    );
  }
}
