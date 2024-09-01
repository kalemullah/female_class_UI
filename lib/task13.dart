import 'package:flutter/material.dart';
import 'package:testing1/task14.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  List<String> Images = [
    'assets/black_shirt.png',
    'assets/grey_shirt.jpeg',
    'assets/amber-shirt.webp',
    'assets/ambershirt.jpg'
  ];
  List<String> price = ['\$ 230', '\$ 250', '\$ 270', '\$ 290'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
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
                Text('Shopping'),
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
            Expanded(
              child: GridView.builder(
                  itemCount: price.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.5,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            height: 225,
                            width: 160,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, top: 5),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 1,
                                                spreadRadius: 1.5)
                                          ]),
                                      child: Icon(
                                        Icons.favorite_rounded,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Image.asset(
                                  Images[index],
                                  height: 130,
                                  width: 130,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 10),
                                Text('T-shirts'),
                                Text(price[index]),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailsScreen(
                                  image: Images[index],
                                  price: price[index],
                                );
                              }));
                            },
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
