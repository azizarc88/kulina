import 'package:flutter/material.dart';
import 'ProductItem.dart';
import 'DataProduct.dart';

class ProductList extends StatelessWidget
{
  ProductList(List<DataProduct> this.data);
  final List<DataProduct> data;

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
                  padding: EdgeInsets.only(left: 15),
                  child: ProductItem(data: data[i]),
                );
              }
              else if (i == (data.length - 1))
              {
                return Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: ProductItem(data: data[i]),
                );
              }
              else
              {
                return ProductItem(data: data[i]);
              }
            }
          },
        )
    );
  }
}
