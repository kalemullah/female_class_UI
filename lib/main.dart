import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testing1/major_task/bottom_nav_bar.dart';
import 'package:testing1/major_task/splash_screen.dart';
import 'package:testing1/task1.dart';
import 'package:testing1/task10.dart';
import 'package:testing1/task11.dart';
import 'package:testing1/task12.dart';
import 'package:testing1/task13.dart';
import 'package:testing1/task15.dart';
import 'package:testing1/task16.dart';
import 'package:testing1/task17.dart';
import 'package:testing1/task18.dart';
import 'package:testing1/task19.dart';
import 'package:testing1/task2.dart';
import 'package:testing1/task20.dart';
import 'package:testing1/task21.dart';
import 'package:testing1/task3.dart';
import 'package:testing1/task4.dart';
import 'package:testing1/task5.dart';
import 'package:testing1/task6.dart';
import 'package:testing1/task7.dart';
import 'package:testing1/task8.dart';
import 'package:testing1/task9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          );
        },
        child: SplashScreen());
  }
}

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: const Icon(Icons.shopping_cart_checkout),
          title: const Text('this is appbar'),
          actions: const [
            Icon(
              Icons.search,
              size: 20,
              color: Colors.amberAccent,
            ),
            Icon(Icons.more_vert),
          ],
          centerTitle: true,
        ),
        body:
            // Container(
            //   color: Colors.blueAccent,
            //   // child: const Column(
            //   //   crossAxisAlignment: CrossAxisAlignment.center,
            //   //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   //   children: [
            //   //     Text('this'),
            //   //     Text('this is body1'),
            //   //     Text('this is body2'),
            //   //     Text('this is body3'),
            //   //   ],
            //   // ),

            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Text(' body1'),
            //       Text('body2'),
            //       Text('body3'),
            //     ],
            //   ),
            // )

            //     Center(
            //   child: Column(
            //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       SizedBox(height: 10),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.amber,
            //       ),
            //       SizedBox(height: 30),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.grey,
            //         child: Center(child: Text('this is text')),
            //       ),
            //       SizedBox(height: 100),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.redAccent,
            //       ),
            //     ],
            //   ),
            // )

            Row(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                    height: 100,
                    width: 100,
                    child: Center(child: const Text('this is test'))),
              ],
            ),
          ],
        ));
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
