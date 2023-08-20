//
//  car_dash_2
//  car_control_widget
//
//  Created by Ngonidzashe Mangudya on 20/08/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';

class CarControlWidget extends StatefulWidget {
  const CarControlWidget({
    required this.asset,
    super.key,
  });

  final String asset;

  @override
  State<CarControlWidget> createState() => _CarControlWidgetState();
}

class _CarControlWidgetState extends State<CarControlWidget> {
  bool on = false;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return GestureDetector(
          onTap: () {
            setState(() {
              on = !on;
            });
          },
          child: AnimatedContainer(
            duration: 200.milliseconds,
            decoration: BoxDecoration(
              color: on ? DashColors.blue.withOpacity(0.2) : DashColors.grey,
              border: on
                  ? Border.all(color: DashColors.blue.withOpacity(0.3))
                  : null,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: ImageIcon(
                AssetImage(
                  widget.asset,
                ),
                size: sy(15),
                color: on ? DashColors.blue : DashColors.grey3,
              ),
            ),
          ),
        );
      },
    );
  }
}
