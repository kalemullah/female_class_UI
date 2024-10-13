import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool upcomingclass = true;

  void changeindex(bool value) {
    setState(() {
      upcomingclass = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15.h),
              Text(
                'English Talke',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Classes',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      changeindex(true);
                    },
                    child: Container(
                      height: 37.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                          color: upcomingclass ? Colors.amber : Colors.white,
                          border: Border.all(
                              color:
                                  upcomingclass ? Colors.white : Colors.amber),
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.r))),
                      child: Center(
                        child: Text(
                          'Upcoming',
                          style: TextStyle(
                              color:
                                  upcomingclass ? Colors.white : Colors.amber),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      changeindex(false);
                    },
                    child: Container(
                      height: 37.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                          color: upcomingclass ? Colors.white : Colors.amber,
                          border: Border.all(
                              color:
                                  upcomingclass ? Colors.amber : Colors.white),
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.r))),
                      child: Center(
                        child: Text(
                          'past',
                          style: TextStyle(
                              color:
                                  upcomingclass ? Colors.amber : Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              upcomingclass
                  ? Expanded(
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  index == 0
                                      ? Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Text(
                                            'today 4 may',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        )
                                      : index == 3
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 10),
                                              child: Text(
                                                'yes 6 may',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            )
                                          : SizedBox(
                                              height: 0,
                                              width: 0,
                                            ),
                                  Container(
                                    height: 110.h,
                                    width: 300.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 2,
                                              color:
                                                  Colors.grey.withOpacity(.1),
                                              spreadRadius: 2)
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.r),
                                            topLeft: Radius.circular(10.r),
                                          ),
                                          child: Image.asset(
                                            'assets/shoes1.jpg',
                                            width: 110.w,
                                            height: 120.h,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'usman',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.sp),
                                            ),
                                            RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text: 'comming',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                  text: '   schedule',
                                                  style: TextStyle(
                                                      color: Colors.teal)),
                                            ])),
                                            Text(
                                              '10:00 - 12:00',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
                 
                 
                  : Expanded(
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  index == 0
                                      ? Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Text(
                                            'today 4 may',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        )
                                      : index == 3
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 10),
                                              child: Text(
                                                'yes 6 may',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            )
                                          : SizedBox(
                                              height: 0,
                                              width: 0,
                                            ),
                                  Container(
                                    height: 110.h,
                                    width: 300.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 2,
                                              color:
                                                  Colors.grey.withOpacity(.1),
                                              spreadRadius: 2)
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.r),
                                            topLeft: Radius.circular(10.r),
                                          ),
                                          child: Image.asset(
                                            'assets/shoes1.jpg',
                                            width: 110.w,
                                            height: 120.h,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'ali',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.sp),
                                            ),
                                            RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text: 'comming',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                  text: '   schedule',
                                                  style: TextStyle(
                                                      color: Colors.teal)),
                                            ])),
                                            Text(
                                              '10:00 - 12:00',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
