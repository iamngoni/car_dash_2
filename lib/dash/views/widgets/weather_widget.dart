//
//  car_dash_2
//  weather_widget
//
//  Created by Ngonidzashe Mangudya on 20/08/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          height: sy(120),
          width: context.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/cloud.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: sx(10),
              vertical: sy(10),
            ),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sandton, South Africa',
                      style: TextStyle(
                        color: DashColors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: sy(9),
                      ),
                    ),
                    Text(
                      '24°',
                      style: TextStyle(
                        color: DashColors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: sy(30),
                      ),
                    ),
                    Text(
                      'Partly Cloudy',
                      style: TextStyle(
                        color: DashColors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: sy(9),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Precipitation 5%',
                      style: TextStyle(
                        color: DashColors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: sy(9),
                      ),
                    ),
                    Text(
                      'Humidity 18%',
                      style: TextStyle(
                        color: DashColors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: sy(9),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
