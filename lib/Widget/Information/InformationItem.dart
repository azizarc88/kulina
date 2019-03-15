import 'package:flutter/material.dart';
import 'DataInformation.dart';
import 'package:intl/intl.dart';

class InformationItem extends StatelessWidget {
  InformationItem({DataInformation this.data});
  DataInformation data;
  double radius = 5.0;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: ClipRRect(
          borderRadius: new BorderRadius.circular(radius),
          child: FadeInImage.assetNetwork(
            placeholder: "assets/loading.gif",
            image: data.image,
          ),
        )
    );
  }
}
