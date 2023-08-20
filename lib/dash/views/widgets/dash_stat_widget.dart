//
//  car_dash_2
//  dash_stat_widget
//
//  Created by Ngonidzashe Mangudya on 20/08/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';

class DashStatWidget extends StatelessWidget {
  const DashStatWidget({
    required this.value,
    required this.unit,
    required this.label,
    super.key,
  });

  final double value;
  final String unit;
  final String label;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$value ',
                  style: TextStyle(
                    color: DashColors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: sy(12),
                  ),
                ),
                Text(
                  unit,
                  style: TextStyle(
                    color: DashColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: sy(7),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: sy(2),
            ),
            Text(
              label,
              style: TextStyle(
                color: DashColors.white.withOpacity(0.5),
                fontWeight: FontWeight.w400,
                fontSize: sy(7),
              ),
            ),
          ],
        );
      },
    );
  }
}
