//
//  car_dash_2
//  spotify_widget
//
//  Created by Ngonidzashe Mangudya on 20/08/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';

class SpotifyWidget extends StatelessWidget {
  const SpotifyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          height: sy(120),
          padding: EdgeInsets.symmetric(
            horizontal: sx(10),
            vertical: sy(10),
          ),
          decoration: BoxDecoration(
            color: DashColors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        width: sx(30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/mai-linda.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: sx(8),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Mai Linda',
                                  style: TextStyle(
                                    color: DashColors.green1,
                                    fontWeight: FontWeight.w500,
                                    fontSize: sy(10),
                                  ),
                                ),
                                Image(
                                  image: const AssetImage(
                                    'assets/images/spotify.png',
                                  ),
                                  height: sy(20),
                                  width: sy(20),
                                ),
                              ],
                            ),
                            Text(
                              'Pengaudzoke',
                              style: TextStyle(
                                color: DashColors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(9),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '3:39',
                                  style: TextStyle(
                                    color: DashColors.white.withOpacity(0.8),
                                    fontWeight: FontWeight.w400,
                                    fontSize: sy(6),
                                  ),
                                ),
                                SizedBox(
                                  width: sx(5),
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: LinearProgressIndicator(
                                      backgroundColor: DashColors.dark2,
                                      valueColor: const AlwaysStoppedAnimation(
                                        DashColors.green1,
                                      ),
                                      value: 0.55,
                                      minHeight: sy(1),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: sx(5),
                                ),
                                Text(
                                  '7:17',
                                  style: TextStyle(
                                    color: DashColors.white.withOpacity(0.8),
                                    fontWeight: FontWeight.w400,
                                    fontSize: sy(6),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: sy(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageIcon(
                    const AssetImage('assets/icons/shuffle.png'),
                    color: DashColors.white,
                    size: sy(15),
                  ),
                  ImageIcon(
                    const AssetImage('assets/icons/previous.png'),
                    color: DashColors.white,
                    size: sy(15),
                  ),
                  Container(
                    height: sy(40),
                    width: sy(40),
                    decoration: const BoxDecoration(
                      color: DashColors.green1,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: DashColors.dark2,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: ImageIcon(
                      const AssetImage('assets/icons/pause.png'),
                      color: DashColors.white,
                      size: sy(15),
                    ),
                  ),
                  ImageIcon(
                    const AssetImage('assets/icons/next.png'),
                    color: DashColors.white,
                    size: sy(15),
                  ),
                  ImageIcon(
                    const AssetImage('assets/icons/repeat.png'),
                    color: DashColors.white,
                    size: sy(15),
                  ),
                ],
              ),
              SizedBox(
                height: sy(5),
              ),
            ],
          ),
        );
      },
    );
  }
}
