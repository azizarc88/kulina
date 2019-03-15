import 'package:flutter/material.dart';
import 'DataProduct.dart';
import 'package:intl/intl.dart';
import 'package:transparent_image/transparent_image.dart';

class ProductItem extends StatelessWidget {
  ProductItem({DataProduct this.data});
  DataProduct data;
  double radius = 5.0;
  final format = new NumberFormat("0,000", "en");

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 150,
      child: new Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          elevation: 0.0,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  new Center(
                      child: new AspectRatio(
                    aspectRatio: 487 / 451,
                    child: new Container(
                      child: FadeInImage.assetNetwork(
                        fit: BoxFit.cover,
                        placeholder: 'assets/loading.gif',
                        image: data.image,
                      ),
                    ),
                  )),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(data.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        Text("Rp. " + format.format(data.price) + " / Hari",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: 30,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10, top: 2, bottom: 2),
                child: FadeInImage.memoryNetwork(
                  fit: BoxFit.contain,
                  placeholder: kTransparentImage,
                  image: data.titleimage,
                ),
              ),
            ],
          )),
    );
  }
}
