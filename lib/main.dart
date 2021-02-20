import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tokopedia(),
    );
  }
}

class Tokopedia extends StatelessWidget{

  List informasi= [
    {
      'jenis':'Berat',
      'value':'1000 gram'
    },
    {
      'jenis':'Kondisi',
      'value':'Baru'
    },
    {
      'jenis':'Asuransi',
      'value':'Ya'
    },
    {
      'jenis':'Pemesanan Min',
      'value':'1 Buah'
    },
    {
      'jenis':'Kategori',
      'value':'IOS'
    },
    {
      'jenis':'Etalase',
      'value':'APPLE iPhone X'
    }
  ];

  Container Promo(String image){
    return Container(
      width: 250,
      child: new Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      )
    );
  }

  Icon back = new Icon(Icons.arrow_back);
  Icon search = new Icon(Icons.search);
  Icon share = new Icon(Icons.share);
  Icon belanjaan = new Icon(Icons.shopping_cart);
  Icon menu = new Icon(Icons.more_vert);
  Icon like = new Icon(Icons.favorite, color: Color.fromARGB(255, 110, 110, 110));
  Color warnaAppBar = Colors.white;
  Color warnaSearch = Colors.grey;
  Color warnaBoxSearch = Color.fromARGB(255, 220, 220, 220);
  Color warnaTombolAppBar = Color.fromARGB(255, 110, 110, 110);
  Color warnaContainer = Color.fromARGB(255, 255, 255, 255);
  Color harga = Colors.deepOrange;
  int jumlahFoto=3;

  @override
  Widget build(BuildContext context) {
    Column imageSlider = new Column(
        children: <Widget>[
        new Container(
          child: Carousel(
            boxFit: BoxFit.fill,
            images: [
              AssetImage('img/iphone1.jpg'),
              AssetImage('img/iphone2.jpg'),
              AssetImage('img/iphone3.jpg')
            ],
          ),
          height: 260,
          width: MediaQuery.of(context).size.width,
        )
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          new IconButton(
              icon: back,
              color: warnaTombolAppBar,
              onPressed: (){}
          ),
          new Padding(
            padding: EdgeInsets.only(top: 6, bottom: 6),
            child: new Container(
              decoration: BoxDecoration(
                color: warnaBoxSearch,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              width: 210,
              child: new Row(
                children: <Widget>[
                  new Icon(
                    Icons.search,
                    color: warnaSearch,
                  ),
                  new Text(
                    "Cari IOS di Tokopedia",
                    style: new TextStyle(
                      color: warnaSearch
                    ),
                  )
                ],
              )
            ),
          ),
          new IconButton(
              icon: share,
              color: warnaTombolAppBar,
              onPressed: (){}
          ),
          new IconButton(
              icon: belanjaan,
              color: warnaTombolAppBar,
              onPressed: (){}
          ),
          new IconButton(
              icon: menu,
              color: warnaTombolAppBar,
              onPressed: (){}
          )
        ],
        backgroundColor: warnaAppBar,
      ),
      body: new Container(
          margin: EdgeInsets.all(2),
          child: new SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                  child: new Stack(
                    children: <Widget>[
                      new Container(
                        alignment: Alignment.bottomLeft,
                        child: imageSlider,
                      ),
                      new Align(
                        alignment: Alignment.bottomRight,
                        child: new FloatingActionButton(
                          onPressed: (){},
                          elevation: 0,
                          child: like,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 260),
                        child: new Container(
                            alignment: Alignment.bottomLeft,
                            width: 110,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30))
                            ),
                            child: new Row(
                              children: <Widget>[
                                new Icon(
                                  Icons.repeat,
                                  color: Colors.white,
                                ),
                                new Text(
                                  "Tukar Tambah",
                                  style: new TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                        ),
                      )
                    ],
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.all(8),
                  child: new Text("Tersedia di seluruh Indonesia"),
                ),
                new Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: new Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: warnaContainer
                      ),
                      child: new Padding(
                        padding: EdgeInsets.all(10),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              "APPLE iPhone X 64GB 64 Garansi 1\nTahun - Silver",
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22
                              ),
                            ),
                            new Row(
                              children: <Widget>[
                                new Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: new Text(
                                    "Rp12.027.000",
                                    style: new TextStyle(
                                        color: harga,
                                        fontSize: 18
                                    ),
                                  ),
                                ),
                                new Icon(
                                  Icons.local_shipping,
                                  color: Colors.lightGreen,
                                ),
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text(
                                      "BEBAS",
                                      style: new TextStyle(
                                          color: Colors.lightGreen,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    new Text(
                                      "ONGKIR",
                                      style: new TextStyle(
                                          color: Colors.lightGreen
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Produk dari",
                                  style: new TextStyle(
                                      color: warnaSearch
                                  ),
                                ),
                                new Icon(
                                  Icons.check_box,
                                  size: 12,
                                  color: Colors.purple,
                                ),
                                new Text(
                                  "Official Store",
                                  style: new TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                            new Row(
                              children: <Widget>[
                                new Icon(
                                  Icons.flag,
                                  color: Colors.purple,
                                  size: 16,
                                ),
                                new Text(
                                  "Garansi harga termurah",
                                  style: new TextStyle(
                                      color: warnaSearch
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: new Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: warnaContainer
                    ),
                    child: new Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            "Stok Tersedia",
                            style: new TextStyle(
                              color: warnaSearch,
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.all(12),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Column(
                                  children: <Widget>[
                                    new Row(
                                      children: <Widget>[
                                        new Text(
                                          "4.3",
                                          style: new TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22
                                          ),
                                        ),
                                        new Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        new Text("/5")
                                      ],
                                    ),
                                    new Text(
                                      "13 Ulasan",
                                      style: new TextStyle(
                                          color: Colors.green
                                      ),
                                    ),
                                  ],
                                ),
                                new Column(
                                  children: <Widget>[
                                    new Icon(
                                      Icons.blur_circular,
                                      color: Colors.green,
                                    ),
                                    new Text(
                                      "73 Diskusi",
                                      style: new TextStyle(
                                          color: Colors.green
                                      ),
                                    )
                                  ],
                                ),
                                new Column(
                                  children: <Widget>[
                                    new Icon(
                                      Icons.local_shipping,
                                      color: Colors.green,
                                    ),
                                    new Text(
                                      "Pengiriman",
                                      style: new TextStyle(
                                          color: Colors.green
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          new Padding(
                              padding: EdgeInsets.symmetric(vertical: 6),
                              child: new Container(
                                decoration: new BoxDecoration(
                                    color: warnaBoxSearch,
                                    borderRadius: BorderRadius.all(Radius.circular(4))
                                ),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                                      child: new Column(
                                        children: <Widget>[
                                          new Text(
                                            "Dilihat",
                                            style: new TextStyle(
                                                color: warnaTombolAppBar
                                            ),
                                          ),
                                          new Text(
                                            "28,18rb",
                                            style: new TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    new Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 28),
                                      child: new Column(
                                        children: <Widget>[
                                          new Text(
                                            "Transaksi Berhasil",
                                            style: new TextStyle(
                                                color: warnaTombolAppBar
                                            ),
                                          ),
                                          new Text(
                                            "92,3%(32)",
                                            style: new TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    new Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 28),
                                      child: new Column(
                                        children: <Widget>[
                                          new Text(
                                            "Wishlist",
                                            style: new TextStyle(
                                                color: warnaTombolAppBar
                                            ),
                                          ),
                                          new Text(
                                            "28,18rb",
                                            style: new TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                          ),
                          new Padding(
                            padding: EdgeInsets.all(12),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    new Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 4),
                                      child: new Icon(
                                        Icons.check_circle,
                                        color: Colors.purple,
                                      ),
                                    ),
                                    new Text("Pasti ready")
                                  ],
                                ),
                                new Row(
                                  children: <Widget>[
                                    new Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 4),
                                      child: new Icon(
                                        Icons.local_offer,
                                        color: Colors.purple,
                                      ),
                                    ),
                                    new Text("Pasti ori")
                                  ],
                                ),
                                new Row(
                                  children: <Widget>[
                                    new Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 4),
                                      child: new Icon(
                                        Icons.verified_user,
                                        color: Colors.purple,
                                      ),
                                    ),
                                    new Text("Garansi 7 hari")
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: new Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: warnaContainer,
                    ),
                    child: new Padding(
                      padding: EdgeInsets.all(10),
                      child: new Column(
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text(
                                "Promo",
                                style: new TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              new Text(
                                "Lihat Semua",
                                style: new TextStyle(
                                    color: Colors.green,
                                    fontSize: 18
                                ),
                              )
                            ],
                          ),
                          new Container(
                            margin: EdgeInsets.symmetric(vertical: 18),
                            height: 100,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                new InkWell(
                                  onTap: (){},
                                  child: Promo("img/tts_promo1.JPG"),
                                ),
                                new InkWell(
                                  onTap: (){},
                                  child: Promo("img/tts_promo1.JPG"),
                                )
                              ],
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text(
                                      "Varian Produk",
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),
                                    ),
                                    new Text(
                                      "Silver",
                                      style: new TextStyle(
                                          color: warnaSearch
                                      ),
                                    )
                                  ],
                                ),
                                new Icon(Icons.chevron_right)
                              ],
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Row(
                                      children: <Widget>[
                                        new Icon(
                                          Icons.repeat,
                                          color: Colors.blue,
                                        ),
                                        new Text(
                                          "Beli dengan Tukar Tambah",
                                          style: new TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18
                                          ),
                                        ),
                                      ],
                                    ),
                                    new Text(
                                      "Dapatkan diskon hingga Rp 1 juta, gunakan kode\npromo: TUKARTAMBAH",
                                      style: new TextStyle(
                                          color: warnaSearch
                                      ),
                                    )
                                  ],
                                ),
                                new Icon(Icons.chevron_right)
                              ],
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Row(
                                      children: <Widget>[
                                        new Icon(
                                          Icons.work,
                                          color: Colors.green,
                                        ),
                                        new Text(
                                          "Takut gadget baru kamu rusak?",
                                          style: new TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18
                                          ),
                                        ),
                                      ],
                                    ),
                                    new Text(
                                      "Perlindungan untuk gadget dari retak karena jatuh,\nterkena cairan hingga perampokan",
                                      style: new TextStyle(
                                          color: warnaSearch
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: new Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: warnaContainer
                    ),
                    child: new Padding(
                      padding: EdgeInsets.all(10),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            "Informasi Produk",
                            style: new TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          looping(informasi),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
      ),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: (){},
//        elevation: 0,
//        child: like,
//        backgroundColor: Colors.white,
//      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      backgroundColor: Color.fromARGB(255, 220, 220, 220),
    );
  }
}

class looping extends SizedBox{
  looping(List informasi):super(
    height: 300,
    child: new ListView.builder(
      itemBuilder: (context, index){
        if(index<informasi.length-2){
          return Container(
            height: 50,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  informasi[index]['jenis']
                ),
                new Text(
                  informasi[index]['value'],
                )
              ],
            ),
          );
        }else{
          return Container(
            height: 50,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  informasi[index]['jenis'],
                ),
                new Text(
                  informasi[index]['value'],
                  style: new TextStyle(
                      color: Colors.green
                  ),
                )
              ],
            ),
          );
        }
      },
      itemCount: informasi.length,
    ),
  );
}