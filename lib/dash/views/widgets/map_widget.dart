//
//  car_dash_2
//  map_widget
//
//  Created by Ngonidzashe Mangudya on 20/08/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:latlong2/latlong.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/configs/colors.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          decoration: BoxDecoration(
            color: DashColors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FlutterMap(
                  options: MapOptions(
                    center: const LatLng(-26.098118, 28.050721),
                    zoom: 10,
                    maxZoom: 22,
                    interactiveFlags: InteractiveFlag.drag |
                        InteractiveFlag.flingAnimation |
                        InteractiveFlag.pinchMove |
                        InteractiveFlag.pinchZoom |
                        InteractiveFlag.doubleTapZoom,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'co.modestnerds.car-dash-2',
                    ),
                    PolylineLayer(
                      polylines: [
                        Polyline(
                          points: [
                            const LatLng(-26.098118, 28.050721),
                            const LatLng(20, 50),
                            const LatLng(25, 45),
                          ],
                          color: DashColors.blue,
                          borderColor: Colors.transparent,
                          strokeWidth: sx(5),
                          borderStrokeWidth: sx(5),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: context.height,
                width: context.width,
                padding: EdgeInsets.symmetric(
                  horizontal: sx(10),
                  vertical: sy(15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: sy(30),
                          width: sy(30),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: DashColors.greyOverlay,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ImageIcon(
                            const AssetImage('assets/icons/mic-record.png'),
                            color: DashColors.white,
                            size: sy(18),
                          ),
                        ),
                        Container(
                          height: sy(30),
                          width: sy(30),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: DashColors.greyOverlay,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ImageIcon(
                            const AssetImage('assets/icons/send.png'),
                            color: DashColors.white,
                            size: sy(18),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: sy(15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: sy(30),
                          padding: EdgeInsets.symmetric(
                            horizontal: sx(2),
                          ),
                          decoration: BoxDecoration(
                            color: DashColors.greyOverlay,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: sy(10),
                                ),
                                child: Icon(
                                  CupertinoIcons.add,
                                  color: DashColors.white,
                                  size: sy(15),
                                ),
                              ),
                              const Divider(
                                color: DashColors.divider,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: sy(10),
                                ),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  color: DashColors.white,
                                  size: sy(15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: sy(15),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: context.height,
                              width: context.width,
                              padding: EdgeInsets.symmetric(
                                horizontal: sx(10),
                                vertical: sy(10),
                              ),
                              decoration: BoxDecoration(
                                color: DashColors.blue,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.arrow_branch,
                                    size: sy(30),
                                    color: DashColors.white,
                                  ),
                                  SizedBox(
                                    width: sx(5),
                                  ),
                                  Container(
                                    height: sy(30),
                                    width: sy(1),
                                    color: DashColors.white.withOpacity(0.5),
                                  ),
                                  SizedBox(
                                    width: sx(5),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '500',
                                              style: TextStyle(
                                                color: DashColors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: sy(12),
                                              ),
                                            ),
                                            Text(
                                              'm',
                                              style: TextStyle(
                                                color: DashColors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: sy(7),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Use the right lane to use the'
                                          ' Benmore road',
                                          style: TextStyle(
                                            color: DashColors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: sy(7),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: sx(10),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: DashColors.greyOverlay,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [],
                              ),
                            ),
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
