import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CabbagePage extends StatefulWidget {
  @override
  State<CabbagePage> createState() => _CabbagePageState();
}

class _CabbagePageState extends State<CabbagePage> {
  //const CabbagePage({Key? key}) : super(key: key);
  bool expanded=false;


  PageController controller=PageController();
  // List<Widget> _list=<Widget>[
  //   new Center(child:new Page(text: "Page 1",)),
  //   new Center(child:new Page(text: "Page 2",)),
  //   new Center(child:new Page(text: "Page 3",)),
  //   new Center(child:new Page(ima: "Page 4",))
  // ];

  @override
  Widget build(BuildContext context) {
    String data="are commonly known as green cabbage,the cannonball cabbage is one of the most popular cabbage varieties. It is so named for the way its leaves wound tightly over one ...";
    String text="";

    if(!expanded){
      if(data.length>4){
        text=data.substring(0,28);
      }else{
        text=data;
      }

    }else{
     text=data;
    }

    String firstHalf="Show more";
    String secondHalf="Show less";
    var rtext=expanded?secondHalf:firstHalf;

    return WillPopScope(
      onWillPop: () async{
        final shouldPop= await showMyDialog();
        return shouldPop ?? false;

      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
                left: 0,
                right: 10,
                top: 50,
                child: SingleChildScrollView(     //replace with pageview, explore page indicator
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 440,//double.maxFinite,
                        height: 250,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                //fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://multifiles.pressherald.com/uploads/sites/4/2016/03/827729_cabbage.jpg'))),
                      ),
                      Container(
                        width: 440,//double.maxFinite,
                        height: 250,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                               // fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://tse2.mm.bing.net/th/id/OIP.LJzGB0t7WyepyatWY_Ml4AHaFj?pid=ImgDet&rs=1'))),
                      ),
                      Container(
                        width: 440,//double.maxFinite,
                        height: 200,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                               // fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://thumbs.dreamstime.com/b/green-cabbage-isolated-white-background-92149877.jpg'))),
                      ),
                    ],
                  ),
                ),

            ),
            Positioned(
                top: 40,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap:(){
                         Navigator.pop(context);
                        // showMyDialog();
                      },

                   child:Container(
                        padding: EdgeInsets.only(left: 3,right: 6, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[100]),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back_ios_new_sharp,size: 20,
                          ),
                        )),
                    ),
                      Container(
                        padding:
                            EdgeInsets.only(left: 6, top: 5, bottom: 5, right: 6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[100]),
                        child: Icon(Icons.favorite_outline,),
                      ),
                  ],
                )),
            Positioned(
              left: 0,
              right: 0,
              top: 260,
              child: Container(
                padding:
                    EdgeInsets.only(top: 40, bottom: 40, left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Organic Fresh Green',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),

                        Padding(
                        padding: EdgeInsets.only(left: 100, top: 12),
                          child: Icon(Icons.star, size: 16, color: Colors.orange,),
                        ),

                       Padding(
                        padding: EdgeInsets.only(top: 5),
                          child: Text('4.5',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    const Text(
                      'Cabbage',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: const Text(
                        'Shop: Alisha Mart',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      padding: EdgeInsets.only(top: 6,right: 5,left: 5,bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: 15, right: 15, top: 10, bottom: 5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green[100]),
                                child: const Center(
                                  child: Image(
                                    image: NetworkImage(
                                      'https://www.wikihow.com/images/6/60/1565786--12.JPG',
                                    ),
                                    height: 50,
                                    width: 30,
                                  ),
                                ),
                                // )
                              ),
                              const Text(
                                'Vegetarian',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: 5, right: 10, top: 10, bottom: 5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.yellow[50]),
                                child: const Center(
                                  child: Image(
                                    image: NetworkImage(
                                      'https://th.bing.com/th/id/R.8728e6cfc59fe0d1c1ba535cd17ab2a2?rik=0zoBZVtE76Pw5A&riu=http%3a%2f%2fmedia.istockphoto.com%2fillustrations%2fhalal-food-stamp-illustration-id480182931%3fk%3d6%26m%3d480182931%26s%3d170667a%26w%3d0%26h%3dDUmNEj130ZCLucFFrxXATdhlEay_ovXXtF1UCWSl9HQ%3d&ehk=5jJk8ALYeFlPneCy74ouXeCiBYJ9QUQkSfgi90hBsk8%3d&risl=&pid=ImgRaw&r=0',
                                    ),
                                    height: 50,
                                    width: 40,
                                  ),
                                ),
                                // )
                              ),
                              const Text(
                                'Halal Food',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: 5, right: 10, top: 10, bottom: 5),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blue[50]),
                                child: const Center(
                                  child: Image(
                                    image: NetworkImage(
                                      'https://tse1.mm.bing.net/th/id/OIP.VrwN-YL_JT864AP2KJV88gHaFS?pid=ImgDet&rs=1',
                                    ),
                                    height: 50,
                                    width: 40,
                                  ),
                                ),
                                // )
                              ),
                              const Text(
                                'Gluten-free',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                     const Padding(
                       padding: EdgeInsets.only(top: 10.0),
                       child: Text(
                        'Details',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                     ),
                    RichText(
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      maxLines: 3,
                      textScaleFactor: 1,
                      text: TextSpan(
                          children: <TextSpan>[TextSpan(text: text,style:TextStyle(fontSize: 12,color: Colors.black)),
                      TextSpan(text: rtext,style:TextStyle(fontSize: 15,color: Colors.lightBlue),

                      recognizer: TapGestureRecognizer()..onTap=() async{
                        setState(() {
                          debugPrint("hello");

                        if(!expanded){
                          text=data;
                          expanded=!expanded;
                        }else{
                          text=data.substring(0,28);
                          expanded=!expanded;
                        }

                            });}
                      )]),

                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
        bottomNavigationBar: Container(
          height: 80,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(), color: Colors.grey[100]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Price'),
                  Text(
                    '\$6.90',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 5,
                ),
                padding:
                    EdgeInsets.only(left: 40, right: 40, top: 15, bottom: 15),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(30)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<bool?> showMyDialog()=> showDialog<bool>(context: context, builder: (context)=>AlertDialog(
    title: Text('Do you want to go back'),
    actions: [
      TextButton(onPressed: ()=>Navigator.pop(context, false), child: Text('No'),
      ),
      TextButton(onPressed: ()=>Navigator.pop(context, true), child: Text('Yes'),
      )
    ],
  ));
}



