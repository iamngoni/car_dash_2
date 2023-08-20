//
//  car_dash_2
//  top_bar_widget
//
//  Created by Ngonidzashe Mangudya on 20/08/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';

class TopBarWidget extends StatefulWidget {
  const TopBarWidget({
    super.key,
  });

  @override
  State<TopBarWidget> createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  final DateTime now = DateTime.now();

  // hh:mm
  String get currentTime => '${now.hour.toString().padLeft(2, '0')}'
      ':${now.minute.toString().padLeft(2, '0')}';

  // Monday | Dec 13 2021
  String get currentDate => '${now.getDay}'
      ' · ${now.getShortMonth}'
      ' ${now.day.toString().padLeft(2, '0')}'
      ' ${now.year}';

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentTime,
                  style: TextStyle(
                    color: DashColors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: sy(15),
                  ),
                ),
                Text(
                  currentDate,
                  style: TextStyle(
                    color: DashColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: sy(9),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ImageIcon(
                  const AssetImage('assets/icons/bluetooth.png'),
                  color: DashColors.white,
                  size: sy(12),
                ),
                SizedBox(
                  width: sx(5),
                ),
                ImageIcon(
                  const AssetImage('assets/icons/location.png'),
                  color: DashColors.white,
                  size: sy(12),
                ),
                SizedBox(
                  width: sx(5),
                ),
                Text(
                  '4G',
                  style: TextStyle(
                    color: DashColors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: sy(9),
                  ),
                ),
                SizedBox(
                  width: sx(2),
                ),
                ImageIcon(
                  const AssetImage('assets/icons/network.png'),
                  color: DashColors.white,
                  size: sy(12),
                ),
                SizedBox(
                  width: sx(5),
                ),
                ImageIcon(
                  const AssetImage('assets/icons/battery.png'),
                  color: DashColors.green,
                  size: sy(20),
                ),
                SizedBox(
                  width: sx(5),
                ),
                Container(
                  height: sy(20),
                  width: sy(20),
                  decoration: const BoxDecoration(
                    color: DashColors.grey,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/face.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: sx(5),
                ),
                Text(
                  'iamngoni Phone',
                  style: TextStyle(
                    color: DashColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: sy(9),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
