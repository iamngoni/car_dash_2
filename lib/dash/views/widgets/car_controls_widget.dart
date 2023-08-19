//
//  car_dash_2
//  car_controls_widget
//
//  Created by Ngonidzashe Mangudya on 20/08/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';

class CarControlsWidget extends StatelessWidget {
  const CarControlsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          height: context.height,
          width: context.width * 0.33,
          decoration: BoxDecoration(
            color: DashColors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
        );
      },
    );
  }
}
