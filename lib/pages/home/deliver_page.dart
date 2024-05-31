import 'package:flutter/material.dart';
import 'package:mini_project_2/pages/home/shop_now.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

double a = 1;

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [

            BottomNavigationBarItem(

            icon: Column(
             children: [
              Padding(
               padding: const EdgeInsets.only(top: 10),
              child: Icon(Icons.home, color: Colors.greenAccent[400]),
              ),
            Text('Home',style: TextStyle(color: Colors.greenAccent[400]),),
            ],
           ),
         label: ''),

            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Icon(Icons.camera_outdoor, color: Colors.greenAccent[100]),
                  ),
                  Text('Deals',style: TextStyle(color: Colors.greenAccent[100]),),
                ],
              ),
              label: '',
            ),

            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Icon(Icons.card_travel_outlined, color: Colors.greenAccent[100]),
                  ),
                  Text('Cart',style: TextStyle(color: Colors.greenAccent[100]),),
                ],
              ),

              label: '',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Icon(Icons.person, color: Colors.greenAccent[100]),
                  ),
                  Text('Account',style: TextStyle(color: Colors.greenAccent[100]),),
                ],
              ),

              label: '',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.account_balance, color: Colors.greenAccent),backgroundColor: Colors.indigo[900],
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: AnimatedScale(
            duration: Duration(seconds: 20),
            scale: a,
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Delivery',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text('Bacangan,sambit',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[400],
                                )),
                            Icon(Icons.arrow_drop_down_sharp)
                          ],
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      child: Image(
                        image: NetworkImage(
                            'https://i.pinimg.com/736x/31/93/56/319356c31deccce1c67c6467fa6505e6.jpg'),
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 15),
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.greenAccent),
                    padding: EdgeInsets.only(
                        right: 15, left: 15, bottom: 20, top: 20),
                    child: const Text(
                      'ORDER  AGAIN',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.greenAccent),
                    margin: EdgeInsets.only(left: 6),
                    padding: EdgeInsets.only(
                        right: 25, left: 25, bottom: 20, top: 20),
                    child: const Text(
                      'LOCAL SHOP',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              //showing the body
              FoodPageBody(),
            ]),
          ),
        ));
  }
}
