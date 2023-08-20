//
//  car_dash_2
//  dashboard
//
//  Created by Ngonidzashe Mangudya on 20/08/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';
import '../widgets/car_controls_widget.dart';
import '../widgets/dash_bottom_navigation_bar.dart';
import '../widgets/map_widget.dart';
import '../widgets/spotify_widget.dart';
import '../widgets/top_bar_widget.dart';
import '../widgets/weather_widget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          backgroundColor: DashColors.dark,
          body: Container(
            height: context.height,
            width: context.width,
            padding: EdgeInsets.symmetric(
              horizontal: sx(10),
              vertical: sy(15),
            ),
            child: Column(
              children: [
                const TopBarWidget(),
                SizedBox(
                  height: sy(20),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const CarControlsWidget(),
                      SizedBox(
                        width: sx(10),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const Expanded(
                              child: MapWidget(),
                            ),
                            SizedBox(
                              height: sy(13),
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  child: SpotifyWidget(),
                                ),
                                SizedBox(
                                  width: sx(10),
                                ),
                                const Expanded(
                                  child: WeatherWidget(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const DashBottomNavigationBar(),
        );
      },
    );
  }
}
