import 'package:app_food/data/discount_info_model.dart';
import 'package:app_food/pages/home/components/happy_deals_item_widget.dart';
import 'package:app_food/pages/home/components/header_section.dart';
import 'package:app_food/routes/route_named.dart';
import 'package:app_food/utils/app_distance.dart';
import 'package:flutter/material.dart';

class HappyDealsSection extends StatelessWidget {
  const HappyDealsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dt.d_24),
          child: HeaderSection(
            title: 'Happy Deals',
            onTapSeeAll: () {
              Navigator.pushNamed(context, RouteNamed.happyDealsPage);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: Dt.d_24, top: Dt.d_8),
          child: SizedBox(
            height: (MediaQuery.sizeOf(context).width / 2.1),
            child: ListView.separated(
              padding: EdgeInsets.only(right: Dt.d_24),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return HappyDealsItemWidget(
                  item: discountListMockData[index],
                  index: index,
                );
              },
              shrinkWrap: true,
              itemCount: discountListMockData.length < 5
                  ? discountListMockData.length
                  : 5,
            ),
          ),
        )
      ],
    );
  }
}
