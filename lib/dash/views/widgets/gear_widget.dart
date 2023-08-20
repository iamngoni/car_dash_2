//
//  car_dash_2
//  gear_widget
//
//  Created by Ngonidzashe Mangudya on 20/08/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';
import '../../models/data/gear.dart';

class GearWidget extends StatefulWidget {
  const GearWidget({
    super.key,
  });

  @override
  State<GearWidget> createState() => _GearWidgetState();
}

class _GearWidgetState extends State<GearWidget> {
  Gear gear = Gear.drive;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          height: sy(30),
          padding: EdgeInsets.symmetric(
            horizontal: sx(5),
          ),
          decoration: BoxDecoration(
            color: DashColors.dark2,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: DashColors.dark2,
                blurRadius: 10,
              ),
            ],
          ),
          child: Row(
            children: Gear.values.map((e) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      gear = e;
                    });
                  },
                  child: AnimatedContainer(
                    duration: 200.milliseconds,
                    margin: EdgeInsets.symmetric(
                      vertical: sy(4),
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: e == gear ? DashColors.blue : DashColors.dark2,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: e == gear
                          ? [
                              const BoxShadow(
                                color: DashColors.dark2,
                                blurRadius: 10,
                              ),
                            ]
                          : null,
                    ),
                    child: Text(
                      e.name,
                      style: TextStyle(
                        color: e == gear
                            ? DashColors.white
                            : DashColors.white.withOpacity(0.8),
                        fontWeight:
                            e == gear ? FontWeight.w700 : FontWeight.w400,
                        fontSize: sy(12),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
