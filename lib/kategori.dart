import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'model/produk.dart';

class KategoriPage extends StatefulWidget {
  final String title;

  const KategoriPage({Key key, this.title}) : super(key: key);
  @override
  _KategoriPageState createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: buildSwiper(),
            flex: 2,
          ),
          Expanded(
            child: buildSubcategories(),
            flex: 1,
          ),
          Expanded(
            child: Container(
              child: ProdukPage(),
            ),
            flex: 4,
          )
        ],
      ),
    );
  }

  Widget buildSubcategories() {
    return Container(
//      height: MediaQuery.of(context).size.height / 8,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          buildSingleSubcategory(
            imgLocation: "",
            imgCaption: "T shirt",
          ),
          buildSingleSubcategory(
            imgLocation: "",
            imgCaption: "Shoes",
          ),
          buildSingleSubcategory(
            imgLocation: "",
            imgCaption: "Jeans",
          ),
          buildSingleSubcategory(
            imgLocation: "",
            imgCaption: "Informal",
          ),
          buildSingleSubcategory(
            imgLocation: "",
            imgCaption: "Formal",
          ),
          buildSingleSubcategory(
            imgLocation: "",
            imgCaption: "Dress",
          ),
          buildSingleSubcategory(
            imgLocation: "",
            imgCaption: "Accessories",
          ),
        ],
      ),
    );
  }

  Widget buildSingleSubcategory({String imgLocation, String imgCaption}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        splashColor: Colors.lightBlueAccent,
        onTap: () {},
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Column(
            children: <Widget>[
              Image.asset(
                imgLocation,
                scale: 3.5,
              ),
              Text(
                imgCaption,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSwiper() {
    List<String> imgs = [
      '',
      '',
      '',
      '',
      '',
      '',
    ];

    return Swiper(
      outer: false,
      itemBuilder: (context, i) {
        return Image.asset(
          imgs[i],
          fit: BoxFit.cover,
        );
      },
      autoplay: true,
      duration: 300,
      pagination: new SwiperPagination(margin: new EdgeInsets.all(5.0)),
      itemCount: imgs.length,
    );
  }

  Widget buildImgCarousel() {
    return Container(
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage(''),
          AssetImage(''),
          AssetImage(''),
          AssetImage(''),
          AssetImage(''),
          AssetImage(''),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 5.0,
        indicatorBgPadding: 2.0,
        // dotColor: Colors.blue,
      ),
    );
  }
}
