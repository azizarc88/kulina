import 'package:flutter/material.dart';
import 'Widget/User/UserInfo.dart';
import 'Widget/Common/BaseTitle.dart';
import 'Widget/Section/SectionList.dart';
import 'Widget/Section/DataSection.dart';
import 'Widget/Category/CategoryList.dart';
import 'Widget/Category/DataCategory.dart';
import 'Widget/ValueCategory/ValueCategoryList.dart';
import 'Widget/ValueCategory/DataValueCategory.dart';
import 'Widget/Product/DataProduct.dart';
import 'Widget/Information/InformationList.dart';
import 'Widget/Information/DataInformation.dart';
import 'package:flutter/services.dart';
import 'Widget/Product/ProductList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  List<DataSection> section = new List();
  List<DataProduct> product = new List();
  List<DataInformation> information = new List();
  List<DataCategory> category = new List();
  List<DataValueCategory> valuecategory = new List();
  List<DataProduct> newproduct = new List();

  @override
  Widget build(BuildContext context)
  {
    section.clear();
    section.add(DataSection(1, "assets/lunch.png", "Lunch"));
    section.add(DataSection(2, "assets/dinner.png", "Dinner"));
    section.add(DataSection(3, "assets/event.png", "Event"));
    product.clear();
    product.add(new DataProduct(1, "Uptown Lunch", "https://assetcdn.kulina.id/production/img/uptown-lunch-2.jpg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190208082836.jpg", 35000));
    product.add(new DataProduct(2, "Healthy Lunch", "https://assetcdn.kulina.id/production/img/healthy-lunch-2.jpg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190208082836.jpg", 50000));
    product.add(new DataProduct(3, "Deluxe Lunch", "https://assetcdn.kulina.id/production/img/deluxe-lunch-3.jpg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190208082836.jpg", 35000));
    product.add(new DataProduct(4, "Basic Lunch", "https://assetcdn.kulina.id/production/img/basic-lunch-2.jpg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190208082836.jpg", 25000));
    product.add(new DataProduct(5, "Twenty Eight", "https://assetcdn.kulina.id/production/img/twenty-eight.jpg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190208081941.jpg", 60000));
    information.clear();
    information.add(new DataInformation(1, "https://www.kulina.id/business?utm_source=website%20homepage&utm_medium=banner&utm_campaign=Kulina%20Business&utm_content=Kulina%20Business%20Banner", "https://assetcdn.kulina.id/banners/banners-20190222113601.jpg"));
    information.add(new DataInformation(2, "https://kulina.typeform.com/to/Ccsp9O?utm_source=homepage&utm_medium=website%20banner&utm_campaign=marketplace&utm_content=form%20daftar%20marketplace", "https://assetcdn.kulina.id/banners/banners-20190312102802.jpg"));
    information.add(new DataInformation(3, "https://www.kulina.id/paket/mini-basic?utm_source=homepage&utm_medium=banner&utm_campaign=mini-basic-banner&utm_content=mini-basic", "https://assetcdn.kulina.id/banners/banners-20190308061735.jpg"));
    information.add(new DataInformation(4, "https://www.kulina.id/paket/salad", "https://assetcdn.kulina.id/web/v10/Salad.jpg"));
    category.clear();
    category.add(DataCategory(1, "assets/nusantara.png", "Nusantara", Color.fromARGB(255, 199, 114, 46)));
    category.add(DataCategory(2, "assets/western.png", "Western", Color.fromARGB(255, 29, 107, 201)));
    category.add(DataCategory(3, "assets/japanese.png", "Japanese", Color.fromARGB(255, 199, 52, 46)));
    category.add(DataCategory(4, "assets/chinese.png", "Chinese", Color.fromARGB(255, 255, 183, 0)));
    category.add(DataCategory(5, "assets/healthy.png", "Healthy", Color.fromARGB(255, 57, 184, 0)));
    category.add(DataCategory(6, "assets/other.png", "Oriental", Color.fromARGB(255, 234, 120, 14)));
    newproduct.clear();
    newproduct.add(new DataProduct(1, "Mini Basic", "https://assetcdn.kulina.id/production/img/mini-basic.jpg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190304093149.jpg", 20000));
    newproduct.add(new DataProduct(2, "NUSA by Betawi Corner", "https://assetcdn.kulina.id/production/img/nusa-by-kafe-betawi.jpeg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190228032653.jpg", 44000));
    newproduct.add(new DataProduct(3, "Catering Dapur Sana Sini", "https://assetcdn.kulina.id/production/img/catering-dapur-sana-sini-1.jpg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190228032919.jpg", 35000));
    newproduct.add(new DataProduct(4, "Qchen Clean Eat", "https://assetcdn.kulina.id/production/img/qchen-clean-eat.jpg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190228032941.jpg", 51000));
    newproduct.add(new DataProduct(5, "SNCTRY", "https://assetcdn.kulina.id/production/img/snctry.jpg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190312033324.jpg", 45000));
    newproduct.add(new DataProduct(6, "Ma La Tang Bento", "https://assetcdn.kulina.id/production/img/ma-la-tang-bento.jpg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190312032954.jpg", 30000));
    newproduct.add(new DataProduct(7, "Sushiya", "https://assetcdn.kulina.id/production/img/sushiya.jpg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190313095200.jpg", 35000));
    newproduct.add(new DataProduct(8, "Green by Ninety Nine", "https://assetcdn.kulina.id/production/img/green-by-ninety-nine.jpg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190314051417.jpg", 60000));
    newproduct.add(new DataProduct(9, "Superfitmeal", "https://assetcdn.kulina.id/production/img/superfitmeal.jpg", "https://assetcdn.kulina.id/production/img/merchant-logo-20190314080338.jpg", 60000));
    valuecategory.clear();
    valuecategory.add(DataValueCategory(1, "Budget", "Kurang dari 25rb", "assets/budget.png"));
    valuecategory.add(DataValueCategory(2, "Value", "Dari 25rb - 34rb", "assets/value.png"));
    valuecategory.add(DataValueCategory(3, "Casual", "Dari 35rb - 49rb", "assets/casual.png"));
    valuecategory.add(DataValueCategory(4, "Premium", "Lebih dari 50rb", "assets/premium.png"));

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Color.fromARGB(0, 255, 255, 255)
    ));

    return MaterialApp(
      theme: ThemeData(fontFamily: "Google Sans"),
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.white,
          bottomNavigationBar: new Theme(
            data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
                canvasColor: Colors.white,
                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: Colors.black45,
                textTheme: Theme
                    .of(context)
                    .textTheme
                    .copyWith(caption: new TextStyle(color: Colors.black12))), // sets the inactive color of the `BottomNavigationBar`
            child: new BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  title: Text('Pesanan'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet),
                    title: Text('Dompet')
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.card_giftcard),
                    title: Text('Referral')
                )
              ],
            ),
          ),
        body: Container(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Container(
              child: Column(
                children: <Widget>[
                  UserInfo(name: "Aziz Nur Ariffianto", profile: "http://aziz-nur.id/img/about-img.jpg", saldo: 72000),
                  Container(
                    height: 148,
                    child: SectionList(section),
                  ),
                  BaseTitle(text: "Featured Product"),
                  Container(
                    height: 210,
                    child: ProductList(product),
                  ),
                  Container(
                    height: 214,
                    child: InformationList(information),
                  ),
                  BaseTitle(text: "Jenis Makanan"),
                  CategoryList(category),
                  BaseTitle(text: "New Product"),
                  Container(
                    height: 210,
                    child: ProductList(newproduct),
                  ),
                  BaseTitle(text: "Harga"),
                  Container(
                    height: 210,
                    child: ValueCategoryList(valuecategory),
                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
