import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';

class Task16 extends StatefulWidget {
  const Task16({super.key});

  @override
  State<Task16> createState() => _Task16State();
}

class _Task16State extends State<Task16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 400,
                color: Colors.amber,
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Container(
                  color: Colors.red.withOpacity(.3),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                        decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Password',
                      // prefixIcon: Icon(Icons.lock),
                      suffix: Container(
                        height: 20,
                        width: 30,
                        color: Colors.red,
                      ),
                      focusedBorder: UnderlineInputBorder(),
                    )),
                    // TextField(
                    //   maxLines: 5,
                    //   decoration: InputDecoration(
                    //     // enabledBorder: InputBorder.none,
                    //     // focusedBorder: sInputBorder.none,
                    //     // focusedBorder:
                    //     //  OutlineInputBorder(
                    //     //     borderRadius: BorderRadius.circular(10),
                    //     //     borderSide:
                    //     //         BorderSide(color: Colors.black, width: 2)),
                    //     border: InputBorder.none,
                    //     suffix: Icon(Icons.password),

                    //     label: Text('Email'),
                    //     prefix: Icon(Icons.email),
                    //     // hintText: 'Enter your email',
                    //   ),

                    //   // maxLength: 25,
                    //   // maxLines: 5,
                    //   // obscureText: true,
                    //   keyboardType: TextInputType.emailAddress,
                    //   style: TextStyle(fontSize: 20, color: Colors.black),
                    // ),
                  ),
                ))),
            Container(
              height: 400,
              color: Colors.green,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: AnimatedRatingStars(
                  initialRating: 3.5,
                  minRating: 0.0,
                  maxRating: 5.0,
                  filledColor: Colors.amber,
                  emptyColor: Colors.grey,
                  filledIcon: Icons.star,
                  halfFilledIcon: Icons.star_half,
                  emptyIcon: Icons.star_border,
                  onChanged: (double rating) {
                    // Handle the rating change here
                    print('Rating: $rating');
                  },
                  displayRatingValue: true,
                  interactiveTooltips: true,
                  customFilledIcon: Icons.star,
                  customHalfFilledIcon: Icons.star_half,
                  customEmptyIcon: Icons.star_border,
                  starSize: 30.0,
                  animationDuration: Duration(milliseconds: 300),
                  animationCurve: Curves.easeInOut,
                  readOnly: false,
                ),
              ),
            ),
            Container(
              height: 400,
              color: Colors.grey,
              child: Text(''),
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
