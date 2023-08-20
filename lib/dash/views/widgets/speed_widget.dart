//
//  car_dash_2
//  speed_widget
//
//  Created by Ngonidzashe Mangudya on 20/08/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';

class SpeedWidget extends StatelessWidget {
  const SpeedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          padding: EdgeInsets.only(
            left: sx(10),
            top: sy(10),
            bottom: sy(10),
            right: sx(30),
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                DashColors.dark2,
                DashColors.dark2,
                DashColors.dark,
                DashColors.grey,
                DashColors.blue,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: DashColors.dark2,
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Speed',
                style: TextStyle(
                  color: DashColors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: sy(9),
                ),
              ),
              Text(
                '84',
                style: TextStyle(
                  color: DashColors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: sy(30),
                ),
              ),
              Text(
                'km/h',
                style: TextStyle(
                  color: DashColors.white.withOpacity(0.5),
                  fontWeight: FontWeight.w400,
                  fontSize: sy(9),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
