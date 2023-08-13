import 'package:app_food/data/reservation_model.dart';
import 'package:app_food/utils/assets_management.dart';
import 'package:flutter/material.dart';

import 'package:timeline_tile/timeline_tile.dart';

class ReservationTrackingStatus extends StatelessWidget {
  const ReservationTrackingStatus({Key? key, this.item}) : super(key: key);

  final ReservationModel? item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF6EFE8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 60,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.1,
              isFirst: index == 0,
              isLast: index == 5 - 1,
              indicatorStyle: IndicatorStyle(
                width: 22,
                height: 22,
                indicator: index != 0
                    ? Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFC4C4C4),
                            borderRadius: BorderRadius.circular(50)),
                      )
                    : Image.asset(AssetsManagement.checkRoundFill),
                drawGap: true,
              ),
              beforeLineStyle: const LineStyle(
                color: Color(0xFFC4C4C4),
              ),
              endChild: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Finished \n17:00, Wednesday 24th Sep 2021',
                  style: TextStyle(
                      color: Color(0xFF483332),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
