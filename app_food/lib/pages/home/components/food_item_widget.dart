import 'package:app_food/data/food_info_model.dart';
import 'package:app_food/routes/route_named.dart';
import 'package:app_food/utils/app_color.dart';
import 'package:app_food/utils/app_distance.dart';
import 'package:flutter/material.dart';

class FoodItemWidget extends StatelessWidget {
  const FoodItemWidget({Key? key, required this.item}) : super(key: key);

  final FoodInfoModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width / 2.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dt.d_10),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
              aspectRatio: 1.2,
              child: Image.asset(
                item.imageAddress,
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: Dt.d_5,
          ),
          Text(
            item.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: AppColor.brow_1,
              ),
              Text(
                item.restaurantAddress,
                style: TextStyle(
                    color: AppColor.brow_1,
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.all(Dt.d_8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNamed.restaurantPage);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFFAD3F32))),
              child: const Text(
                'Reserve',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
