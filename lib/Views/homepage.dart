import 'package:carousel_slider/carousel_slider.dart';
import 'package:crickhub/const/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 20,
        backgroundColor:  AppColors.blue.withOpacity(0.8),
        title:  Text(
          'Live',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 275.h,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,

                ),
                Positioned(
                  top: 0,
                  child: Container(
                    height: 90.h,width: MediaQuery.of(context).size.width,
                    color: AppColors.blue.withOpacity(0.8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Matches',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),),
                          Text(
                            'More',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 60.h,
                  child: Container(
                    height: 250.h,
                   width: MediaQuery.of(context).size.width,
                   child: Column(
                     children: [
                       CarouselSlider(
                         options: CarouselOptions(
                           enableInfiniteScroll: false,
                           height: 200.h,
                           enlargeCenterPage: true,
                           onPageChanged: (index, reason) {
                             setState(() {
                               _currentIndex = index;
                             });
                           },
                             viewportFraction: 0.9
                         ),
                         items: [
                         Card(
                         color: Colors.blue,
                         child: Center(
                           child: Text(
                             'Container 1',
                             style: TextStyle(color: Colors.white, fontSize: 24),
                           ),
                         ),
                       ),
                          Card(
                            color: Colors.green,
                            child: Center(
                              child: Text(
                                'Container 2',
                                style: TextStyle(color: Colors.white, fontSize: 24),
                              ),
                            ),
                          ),
                           Card(
                             color: Colors.green,
                             child: Center(
                               child: Text(
                                 'Container 3',
                                 style: TextStyle(color: Colors.white, fontSize: 24),
                               ),
                             ),
                           ),]
                  ),
                       SizedBox(height: 10.h,),
                       Row(

                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           for (int i = 0; i < 3; i++)
                             Container(
                               width: 6.0,
                               height: 6.0,
                               margin: EdgeInsets.symmetric(horizontal: 2.0),
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: _currentIndex == i ? Colors.black : Colors.grey,
                               ),
                             ),
                         ],
                       ),
                     ],
                   )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),),
                  SizedBox(height: 10.h,),
                  Container(
                    height: 80.h,
                    child:  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, // Adjust the number of items as needed
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Container(
                            width: 120.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue, // Adjust the background color as needed
                            ),
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Text(
                    'Top Stories',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),),
                  Container(
                    height: 200.h,
                    color: Colors.grey,

                  ),
                  Divider(),
                  Container(
                    child:  ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4, // Adjust the number of items as needed
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Container(
                            height: 90.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue, // Adjust the background color as needed
                            ),
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        );
                      }, separatorBuilder: (BuildContext context, int index) { return Divider(); },
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Text(
                    'MATCHES HIGHLIGHTS',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),),
                  SizedBox(height: 7.h,),
                  Column(
                    children: [
                      CarouselSlider(
                          options: CarouselOptions(
                              enableInfiniteScroll: false,
                              height: 200.h,
                              enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                              viewportFraction: 1
                          ),
                          items: [
                            Card(
                              color: Colors.blue,
                              child: Center(
                                child: Text(
                                  'Container 1',
                                  style: TextStyle(color: Colors.white, fontSize: 24),
                                ),
                              ),
                            ),
                            Card(
                              color: Colors.green,
                              child: Center(
                                child: Text(
                                  'Container 2',
                                  style: TextStyle(color: Colors.white, fontSize: 24),
                                ),
                              ),
                            ),
                            Card(
                              color: Colors.green,
                              child: Center(
                                child: Text(
                                  'Container 3',
                                  style: TextStyle(color: Colors.white, fontSize: 24),
                                ),
                              ),
                            ),]
                      ),
                      SizedBox(height: 10.h,),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              width: 6.0,
                              height: 6.0,
                              margin: EdgeInsets.symmetric(horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentIndex == i ? Colors.black : Colors.grey,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Latest Videos',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),),
                      TextButton(onPressed: (){}, child: Text('More'))
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Container(
                    height: 80.h,
                    child:  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, // Adjust the number of items as needed
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Container(
                            width: 120.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue, // Adjust the background color as needed
                            ),
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Latest News',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),),
                      TextButton(onPressed: (){}, child: Text('More'))
                    ],
                  ),
                  Container(
                    child:  ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4, // Adjust the number of items as needed
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Container(
                            height: 90.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue, // Adjust the background color as needed
                            ),
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        );
                      }, separatorBuilder: (BuildContext context, int index) { return Divider(); },
                    ),
                  ),
                  SizedBox(height: 15.h,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
