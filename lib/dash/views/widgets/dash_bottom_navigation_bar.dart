//
//  car_dash_2
//  dash_bottom_navigation_bar
//
//  Created by Ngonidzashe Mangudya on 20/08/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';

class DashBottomNavigationBar extends StatelessWidget {
  const DashBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return BottomAppBar(
          color: DashColors.dark2,
          child: SizedBox(
            width: context.width,
            height: sy(70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: sy(50),
                  width: sy(50),
                  decoration: BoxDecoration(
                    color: DashColors.blue.withOpacity(0.2),
                    border: Border.all(color: DashColors.blue.withOpacity(0.3)),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: ImageIcon(
                      const AssetImage('assets/icons/home.png'),
                      color: DashColors.blue,
                      size: sy(25),
                    ),
                  ),
                ),
                SizedBox(
                  width: sx(30),
                ),
                Container(
                  height: sy(50),
                  width: sy(50),
                  decoration: BoxDecoration(
                    color: DashColors.grey2,
                    border:
                        Border.all(color: DashColors.grey3.withOpacity(0.3)),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: ImageIcon(
                      const AssetImage('assets/icons/location.png'),
                      color: DashColors.grey3,
                      size: sy(25),
                    ),
                  ),
                ),
                SizedBox(
                  width: sx(30),
                ),
                Container(
                  height: sy(50),
                  width: sy(50),
                  decoration: BoxDecoration(
                    color: DashColors.grey2,
                    border:
                        Border.all(color: DashColors.grey3.withOpacity(0.3)),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: ImageIcon(
                      const AssetImage('assets/icons/car.png'),
                      color: DashColors.grey3,
                      size: sy(25),
                    ),
                  ),
                ),
                SizedBox(
                  width: sx(30),
                ),
                Container(
                  height: sy(50),
                  width: sy(50),
                  decoration: BoxDecoration(
                    color: DashColors.grey2,
                    border:
                        Border.all(color: DashColors.grey3.withOpacity(0.3)),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: ImageIcon(
                      const AssetImage('assets/icons/more.png'),
                      color: DashColors.grey3,
                      size: sy(25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
