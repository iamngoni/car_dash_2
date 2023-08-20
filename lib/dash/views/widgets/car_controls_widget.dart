//
//  car_dash_2
//  car_controls_widget
//
//  Created by Ngonidzashe Mangudya on 20/08/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';
import 'dash_stat_widget.dart';

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
          child: Column(
            children: [
              SizedBox(
                height: sy(20),
              ),
              Image(
                image: const AssetImage('assets/images/honda.png'),
                height: sy(80),
              ),
              SizedBox(
                height: sy(7),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Honda Urban',
                    style: TextStyle(
                      color: DashColors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: sy(8),
                    ),
                  ),
                  SizedBox(
                    width: sx(5),
                  ),
                  Icon(
                    CupertinoIcons.info,
                    color: DashColors.white,
                    size: sy(10),
                  ),
                ],
              ),
              SizedBox(
                height: sy(20),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: sx(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: LinearProgressIndicator(
                    minHeight: sy(10),
                    backgroundColor: DashColors.dark2,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      DashColors.green,
                    ),
                    value: 0.8,
                  ),
                ),
              ),
              SizedBox(
                height: sy(10),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: sx(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.ev_station,
                      color: DashColors.blue,
                      size: sy(15),
                    ),
                    SizedBox(
                      width: sx(5),
                    ),
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DashStatWidget(
                            value: 204,
                            unit: 'km',
                            label: 'Remaining',
                          ),
                          DashStatWidget(
                            value: 128,
                            unit: 'Wh/km',
                            label: 'Average',
                          ),
                          DashStatWidget(
                            value: 35.5,
                            unit: 'kwH',
                            label: 'Full Capacity',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
