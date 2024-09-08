import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.image, this.name, this.price});

  final image;
  final price;
  final name;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedsize = -1;
  void changesize(int tempsized) {
    setState(() {
      selectedsize = tempsized;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(.1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Icon(Icons.arrow_back_ios),
                    )),
                  ),
                ),
                Text('Puma'),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(.1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(child: Icon(Icons.menu)),
                ),
              ],
            ),
            SizedBox(height: 80),
            Container(
              height: 350,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.red.withOpacity(.2)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text('T-shirt shop'),
                  SizedBox(height: 15),
                  Image.asset(
                    widget.image,
                    height: 250,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20),
                  Text('${widget.price}'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.red.withOpacity(.2),
                ),
              ),
              child: Center(child: Text('Sized')),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    changesize(1);
                  },
                  child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: selectedsize == 1
                                    ? Colors.red
                                    : Colors.grey,
                                blurRadius: 1,
                                spreadRadius: 1.5)
                          ]),
                      child: Center(child: Text('42'))),
                ),
                SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    changesize(2);
                  },
                  child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: selectedsize == 2
                                    ? Colors.red
                                    : Colors.grey,
                                blurRadius: 1,
                                spreadRadius: 1.5)
                          ]),
                      child: Center(child: Text('43'))),
                ),
                SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    changesize(3);
                  },
                  child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: selectedsize == 3
                                    ? Colors.red
                                    : Colors.grey,
                                blurRadius: 1,
                                spreadRadius: 1.5)
                          ]),
                      child: Center(child: Text('44'))),
                ),
                SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    changesize(4);
                  },
                  child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: selectedsize == 4
                                    ? Colors.red
                                    : Colors.grey,
                                blurRadius: 1,
                                spreadRadius: 1.5)
                          ]),
                      child: Center(child: Text('45'))),
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red.withOpacity(.8)),
              child: Center(
                child: Text(
                  'Buy Now',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
