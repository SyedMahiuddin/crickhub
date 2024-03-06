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
        toolbarHeight: 30,
        backgroundColor:  AppColors.blue.withOpacity(0.8),
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30.h,width: 28.h,
                child: Image.asset('assets/images/img.png')),
            SizedBox(width: 5.w,),
            Text(
              'Live',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),),
            SizedBox(width: 5.w,),
            Container(
              width: 1.w,
              height: 18.h,
              color: Colors.white,
            ),
            SizedBox(width: 5.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Powered By',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),),
                Text(
                  'DevTripleS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),),
              ],
            )
          ],
        ),
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
                    height: 70.h,
                    child:  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: 10, // Adjust the number of items as needed
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Container(
                            width: 130.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue, // Adjust the background color as needed
                            ),

                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset('assets/images/explore.png',height: 80.h, width: 130.w,fit: BoxFit.fill,)),
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
                    color: Colors.grey.withOpacity(0.1),
                    child: Column(
                      children: [
                        Container(
                          height: 140.h,
                          width: MediaQuery.of(context).size.width-20.w,
                          decoration: BoxDecoration(
                            color: Colors.blue, // Adjust the background color as needed
                          ),

                          child: Image.asset('assets/images/story.png',height: 140.h,fit: BoxFit.fill,),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width:280.w,
                              child: Text(
                                'Chattogram beat Platoon Chattogram won by 7 wickets (with 14 balls remaining) - Platoon vs',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                ),),
                            ),
                            IconButton(onPressed: (){}, icon: Icon(Icons.share))
                          ],
                        )
                      ],
                    ),

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
