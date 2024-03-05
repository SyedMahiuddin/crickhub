
import 'package:flutter/material.dart';

import 'colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(70.0); // Set your preferred height

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 30,width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(90),
                  child: Image.asset("assets/images/pp.jpg"),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 0),
          Text(
            'Hi Rafiq',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 25,
            ),
          ),

        ],
      ),
    );
  }}