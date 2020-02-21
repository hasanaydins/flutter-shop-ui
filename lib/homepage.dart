import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_search_panel/flutter_search_panel.dart';
import 'package:flutter_search_panel/search_item.dart';
import 'package:shop_app/DetayPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  var mygreen = Color.fromARGB(255, 0, 199, 101);
  var mybackground = Colors.grey[50];
  var mygrey = Color.fromRGBO(146, 146, 146, 1);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var devWidth = MediaQuery.of(context).size.width;
    var devHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 20),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromRGBO(250, 250, 250, 1),
            elevation: 0,
          ),
        ),
        bottomNavigationBar: Material(
          color: Colors.white,
          child: Container(
            height: 70,
            padding: EdgeInsets.all(0),
            child: TabBar(
                indicator: CircleTabIndicator(color: mygreen, radius: 3),
                indicatorColor: Colors.transparent,
                controller: tabController,
                tabs: [
                  Tab(
                    icon: Icon(
                      AntDesign.home,
                      color: Colors.black,
                      size: 22,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Feather.shopping_cart,
                      color: Colors.black,
                      size: 22,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      AntDesign.user,
                      color: Colors.black,
                      size: 22,
                    ),
                  ),
                ]),
          ),
        ),
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          "Categories",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      ///////////// categories /////////////
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 130,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            categoriEkle(
                                MaterialCommunityIcons.shoe_formal, "Shoes"),
                            categoriEkle(Ionicons.ios_woman, "Woman"),
                            categoriEkle(AntDesign.bulb1, "Devices"),
                            categoriEkle(Feather.headphones, "Gadgets"),
                            categoriEkle(Entypo.game_controller, "Gaming"),
                            categoriEkle(Ionicons.ios_man, "Man"),
                            categoriEkle(
                                MaterialCommunityIcons.ring, "Accecories"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 3),
                              child: Text("Best Selling",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, bottom: 3, right: 5),
                              child: Text("See All",
                                  style: TextStyle(fontSize: 13)),
                            ),
                          ],
                        ),
                      ),
                      ///////////// fotoalr list /////////////

                      Container(
                        padding: EdgeInsets.all(12),
                        height: 400,
                        color: Colors.transparent,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            urunEkle("assets/Image.png", "BeoPlay Speaker",
                                "Bang and Olufsen", "\$755"),
                            urunEkle("assets/Image2.png", "Leather Wristwatch",
                                "Tag Heuer", "\$450"),
                            urunEkle("assets/Image3.png", "BeoPlay Speaker",
                                "Bang and Olufsen", "\$755"),
                            urunEkle("assets/Image5.png", "Leather Wristwatch",
                                "Tag Heuer", "\$450"),
                            urunEkle("assets/Image4.png", "BeoPlay Speaker",
                                "Bang and Olufsen", "\$755"),
                            urunEkle("assets/Image7.png", "Leather Wristwatch",
                                "Tag Heuer", "\$450"),
                          ],
                        ),
                      ),

                      ///////////// iphoneee /////////////
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 150,
                        decoration: BoxDecoration(
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black.withOpacity(0.04),
                                  offset: new Offset(0, 3),
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0),
                            ],
                            borderRadius: BorderRadius.circular(6),
                            image: DecorationImage(
                                image: AssetImage("assets/iphone.png"),
                                fit: BoxFit.cover)),
                      ),

                      ///////////// featured /////////////
                      Container(
                        height: 120,
                        padding: EdgeInsets.all(12),
                        color: Colors.transparent,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            featuredEkle(
                                "assets/bo.png", "B&o", "5693 Products"),
                            featuredEkle(
                                "assets/beats.png", "Beats", "5693 Products"),
                            featuredEkle(
                                "assets/bo.png", "B&o", "5693 Products"),
                            featuredEkle(
                                "assets/beats.png", "Beats", "5693 Products"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                color: Color.fromRGBO(250, 250, 250, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 18, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                        ),
                        width: devWidth - 100, //
                        height: 47, // do it in both Container
                        child: TextField(
                          autocorrect: false,
                          autofocus: false,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              AntDesign.search1,
                              color: Colors.black,
                            ),
                          ),
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          onChanged: (String s) => debugPrint("sdeger: $s"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: Icon(
                            Feather.camera,
                            color: Colors.white,
                          ),
                        ),
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                            color: mygreen,
                            borderRadius: BorderRadius.circular(40)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget categoriEkle(iconPath, titlePath) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: <Widget>[
          Container(
            width: 75,
            height: 75,
            child: Icon(
              iconPath,
              size: 30,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  new BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      offset: new Offset(0, 3),
                      blurRadius: 5.0,
                      spreadRadius: 2.0),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(titlePath),
          ),
        ],
      ),
    );
  }

  Widget urunEkle(String imagePath, prodTitle, prodSubtitle, prodPrice) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ///////////// foto /////////////

          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      DetayPage(imgPath: imagePath, titleUrun: prodTitle),
                ),
              );
            },
            child: Container(
              width: 180,
              height: 280,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        offset: new Offset(0, 3),
                        blurRadius: 5.0,
                        spreadRadius: 2.0),
                  ]),
            ),
          ),

          ///////////// foto titles /////////////

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  prodTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  prodSubtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: mygrey, fontSize: 11),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  prodPrice,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: mygreen,
                      fontSize: 18),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget featuredEkle(iconPath, titlePath, subTitle) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            width: 200,
            height: 80,
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage(iconPath),
                  width: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 6),
                      child: Text(
                        titlePath,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 7),
                      child: Text(
                        subTitle,
                        style: TextStyle(fontSize: 13, color: mygrey),
                      ),
                    ),
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  new BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      offset: new Offset(0, 3),
                      blurRadius: 5.0,
                      spreadRadius: 2.0),
                ]),
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({@required Color color, @required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - radius / 0.2);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
