import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Today_Special/cabbage_page.dart';


class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.98);
  var _currPageValue = 0.0; //scale up ,down

  double _scaleFactor = 0.9;
  double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  //we dont wantt to be active(leave the page we need dispose them)
  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        Container(
          height: 160,
          child: PageView.builder(
              controller: pageController,
              itemCount: 3,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        //dot indicator
        // new DotsIndicator(
        //   dotsCount: 3,
        //   position: _currPageValue,
        //   decorator: DotsDecorator(
        //     size: const Size.square(9.0),
        //     activeSize: const Size(18.0, 9.0),
        //     activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        //   ),
        // ),

        //shop by category
        Container(
          margin: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Shop by category',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF004D40),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,

           child:Row(
            children: [
              //Scrollbar(child: child),
              Column(
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue[50]),
                    child: const Center(
                      child: Image(
                        image: NetworkImage(
                          'https://thumbs.dreamstime.com/z/carrot-broccoli-19306814.jpg',
                        ),
                        height: 60,
                        width: 40,
                      ),
                    ),
                    // )
                  ),
                  Text(
                    'Vegas',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(left: 5, right: 10, top: 10, bottom: 5),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue[50]),
                    child: const Center(
                      child: Image(
                        image: NetworkImage(
                          'https://ximg.retty.me/crop/s194x194/-/retty/img_repo/l/01/278483.jpghttps://ximg.retty.me/crop/s194x194/-/retty/img_repo/l/01/278483.jpg',
                        ),
                        height: 60,
                        width: 40,
                      ),
                    ),
                    // )
                  ),
                  Text(
                    'Meat',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(left: 5, right: 10, top: 10, bottom: 5),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue[50]),
                    child: const Center(
                      child: Image(
                        image: NetworkImage(
                          'https://i.pinimg.com/originals/df/d5/40/dfd540f9796033614878db5d16286c53.png',
                        ),
                        height: 60,
                        width: 40,
                      ),
                    ),
                    // )
                  ),
                  Text(
                    'Fruits',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(left: 5, right: 10, top: 10, bottom: 5),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue[50]),
                    child: const Center(
                      child: Image(
                        image: NetworkImage(
                          'https://tse4.mm.bing.net/th/id/OIP.z5jwC80rEmQNB5UnRLx80AHaHt?pid=ImgDet&rs=1',
                        ),
                        height: 60,
                        width: 40,
                      ),
                    ),
                    // )
                  ),
                  Text(
                    'Milk',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(left: 5, right: 10, top: 10, bottom: 5),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue[50]),
                    child: const Center(
                      child: Image(
                        image: NetworkImage(
                          'https://tse4.mm.bing.net/th/id/OIP.cD2zxXLJhW2-1GHtSH9raAHaE_?pid=ImgDet&rs=1',
                        ),
                        height: 60,
                        width: 40,
                      ),
                    ),
                    // )
                  ),
                  Text(
                    'Fish',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue[50]),
                    child: const Center(
                      child: Image(
                        image: NetworkImage(
                          'https://thumbs.dreamstime.com/z/carrot-broccoli-19306814.jpg',
                        ),
                        height: 60,
                        width: 40,
                      ),
                    ),
                    // )
                  ),
                  Text(
                    'Vegas',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),


            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Todays Special',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF004D40),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF00BFA5),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
        ),
        Container(
          margin: EdgeInsets.all(15),
          child: GridView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 1.0,
            ),
            itemBuilder: (context, index) {
              var colors = [
                Color(0xFFFFE0B2),
                Color(0xFFB3E5FC),
                Color(0xFFC5CAE9),
                Color(0xFFCE93D8),
              ];

              List<Image> decimage = [
                const Image(
                  image: NetworkImage(
                      'https://tse2.mm.bing.net/th/id/OIP.XvsztABlDbVSJCLKot8LOAHaII?pid=ImgDet&w=860&h=944&rs=1'),
                  height: 70,
                  width: 80,
                ),
                const Image(
                  image: NetworkImage(
                      'https://tse1.mm.bing.net/th/id/OIP.7pqCC8kYfis9RwwMaPc7uwHaHa?pid=ImgDet&w=500&h=500&rs=1'),
                  height: 70,
                  width: 80,
                ),
                const Image(
                  image: NetworkImage(
                      'https://i.pinimg.com/originals/ae/7f/b9/ae7fb9b2718201fdd8c8238e779a3323.jpg'),
                  height: 70,
                  width: 80,
                ),
                Image(
                  image: NetworkImage(
                      'https://www.lemonsparklecleaning.co.uk/wp-content/uploads/2020/06/lemon_halved-313x245-1.jpg'),
                  height: 70,
                  width: 80,
                ),
              ];
              List<String> name = [
                "Special Onion",
                "Green Cabbage",
                "Red Berry",
                "Orange Lemon"
              ];
              List<String> price = ["\$5.99", "\$6.90", "\$6.85", "\$7.99"];
              void selectedItem(String item, BuildContext context) {
                if ("Green Cabbage" == name[index]) {
                  // Navigator.of(context).push(_createRoute());
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => CabbagePage()));
                  Navigator.of(context).push(_createRoute());

                }
              }
              //final item = courseNames[index];
              return Container(
                height: 100,
                width: 20,
                decoration: BoxDecoration(
                    color: colors[index % colors.length],
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.orange,
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    decimage[index],
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.only(top: 8,left: 8,),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(price[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              GestureDetector(
                                // //----------navigate to next page---------------
                                onTap: () {
                                  selectedItem(name[index], context);
                                },

                                child: Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(color: Color(0xFF00A368),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10))),

                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    // List<Image> Popularimage = [
    //   Image(
    //     image: NetworkImage(
    //         'https://tse2.mm.bing.net/th/id/OIP.XvsztABlDbVSJCLKot8LOAHaII?pid=ImgDet&w=860&h=944&rs=1'),
    //     height: 70,
    //     width: 80,
    //   ),
    //   Image(
    //     image: NetworkImage(
    //         'https://tse1.mm.bing.net/th/id/OIP.7pqCC8kYfis9RwwMaPc7uwHaHa?pid=ImgDet&w=500&h=500&rs=1'),
    //     height: 70,
    //     width: 80,
    //   ),
    //   Image(
    //     image: NetworkImage(
    //         'https://i.pinimg.com/originals/ae/7f/b9/ae7fb9b2718201fdd8c8238e779a3323.jpg'),
    //     height: 70,
    //     width: 80,
    //   ),
    //   Image(
    //     image: NetworkImage(
    //         'https://www.lemonsparklecleaning.co.uk/wp-content/uploads/2020/06/lemon_halved-313x245-1.jpg'),
    //     height: 70,
    //     width: 80,
    //   ),
    // ];

    //dart code for scale
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2; //1/10*220=22
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2; //1/10*220=22
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor), 1);
    }

    return Transform(
      transform: matrix,
      child: Container(
        height: 220,
        margin: EdgeInsets.only(left: 15, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven ? Color(0xFFFFF3E0) : Color(0xFFFBE9E7),
        ),

        child: Container(
          margin: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Top deal !',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF5C6BC0),
                          fontWeight: FontWeight.bold)),
                  index.isEven
                      ? const Text('FRESH AVOCADO',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF1A237E),
                              fontWeight: FontWeight.bold))
                      : const Text('FRESH ORANGE',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF1A237E),
                              fontWeight: FontWeight.bold)),
                  index.isEven
                      ? const Text('UP TO 15% OFF',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF1A237E),
                              fontWeight: FontWeight.bold))
                      : const Text('UP TO 20% OFF',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF1A237E),
                              fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Color(0xFF004D40)),
                    margin: EdgeInsets.only(left: 6),
                    padding: EdgeInsets.only(top: 10,bottom: 15,right: 23,left: 23),
                    child: const Text(
                      'Shop Now',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF00BFA5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Image(
                image: index.isEven
                    ? NetworkImage(
                        'https://afm-6b83.kxcdn.com/wp-content/uploads/2016/11/avocado-hub.jpg')
                    : NetworkImage(
                        'https://ucarecdn.com/9c26a4bd-75d7-4d92-a0ca-48d95eb80249/-/format/auto/-/preview/3000x3000/-/quality/lighter/'),
              ),
            ],
          ),
        ),

        //scalling part
      ),
    );
  }
}


Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>  CabbagePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.slowMiddle;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
