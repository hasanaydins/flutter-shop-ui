import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetayPage extends StatefulWidget {
  var imgPath;
  var titleUrun;

  DetayPage({this.imgPath, this.titleUrun});

  @override
  _DetayPageState createState() => _DetayPageState();
}

class _DetayPageState extends State<DetayPage> {
  var mygreen = Color.fromARGB(255, 0, 199, 101);
  var mybackground = Colors.grey[50];
  var mygrey = Color.fromRGBO(146, 146, 146, 1);

  @override
  Widget build(BuildContext context) {
    var devWidth = MediaQuery.of(context).size.width;
    var devHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                elevation: 0,
                expandedHeight: devHeight / 1.8,
                pinned: true,
                backgroundColor: mygreen,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    widget.imgPath,
                    fit: BoxFit.cover,
                  ),
                  centerTitle: true,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          widget.titleUrun,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: 180,
                            height: 45,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: mygrey.withOpacity(0.3)),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Size",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "XL",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 180,
                            height: 45,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: mygrey.withOpacity(0.3)),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Color",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Icon(
                                    FontAwesome.circle,
                                    color: Color.fromRGBO(44, 60, 114, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "Details",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 12),
                        child: Text(
                          "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.",
                          style: TextStyle(
                              height: 1.8,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          "Read More",
                          style: TextStyle(color: mygreen, fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "Reviews",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          "Write your review",
                          style: TextStyle(fontSize: 15, color: mygreen),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      reviewGetir("assets/user.png", "George Luke",
                          "al sdıfhaksdjfhakç sjdfhçanksdjfnhs"),
                      SizedBox(
                        height: 20,
                      ),
                      reviewGetir("assets/user2.png", "Kylie Garden",
                          "al sdıfhaksdjfhakç sjdfhçanksdjfnhs"),
                      SizedBox(
                        height: 20,
                      ),
                      reviewGetir("assets/user3.png", "Melissa Surter",
                          "al sdıfhaksdjfhakç sjdfhçanksdjfnhs"),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 27),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("PRICE", style: TextStyle(fontSize: 11)),
                      Text(
                        "\$1500",
                        style: TextStyle(
                            color: mygreen,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: 140,
                    height: 50,
                    child: RaisedButton(
                      elevation: 0,
                      color: mygreen,
                      onPressed: () {},
                      child: Text(
                        "ADD",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget reviewGetir(String imagePath, String isim, String yorum) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(12),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  isim,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.only(left: 80),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Color.fromRGBO(235, 229, 0, 1),
                      ),
                      Icon(Icons.star, color: Color.fromRGBO(235, 229, 0, 1)),
                      Icon(Icons.star, color: Color.fromRGBO(235, 229, 0, 1)),
                      Icon(Icons.star, color: Color.fromRGBO(235, 229, 0, 1)),
                      Icon(Icons.star, color: Color.fromRGBO(235, 229, 0, 1)),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              width: 280,
              padding: EdgeInsets.only(right: 15),
              child: Text(
                  "Wonderful jean, perfect gift for my girl for our anniversary!"),
            ),
          ],
        )
      ],
    );
  }
}
