import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Task20 extends StatefulWidget {
  const Task20({super.key});

  @override
  State<Task20> createState() => _Task20State();
}

class _Task20State extends State<Task20> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('TabBar'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Bid',
                icon: Icon(Icons.add),
              ),
              Tab(
                text: 'Buy',
                icon: Icon(Icons.shopping_cart),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              // color: Colors.,
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: '57.0',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 20),
                                children: [
                              TextSpan(
                                  text: ' kg',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15))
                            ])),
                        Text(
                          'Current weight',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontFamily: 'poppins'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: '-3.0',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 20),
                                children: [
                              TextSpan(
                                  text: ' kg',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15))
                            ])),
                        Text(
                          'progress done',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                        Text(
                          'progress done',
                          style: TextStyle(
                              // fontFamily: 'poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 190,
                        height: 150,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: '-3.0',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                        fontSize: 20),
                                    children: [
                                  TextSpan(
                                      text: ' kg',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15))
                                ])),
                            Text(
                              'Last week',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 190,
                        height: 150,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: '-3',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                        fontSize: 20),
                                    children: [
                                  TextSpan(
                                      text: ' kg',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15))
                                ])),
                            Text(
                              'Last month',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.amberAccent,
            )
          ],
        ),
      ),
    );
  }
}
