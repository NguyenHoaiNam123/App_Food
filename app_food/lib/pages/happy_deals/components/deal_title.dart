import 'package:flutter/material.dart';

class DealTitle extends StatelessWidget {
  const DealTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: Row(
        children: [
          const SizedBox(
            width: 28,
          ),
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200]?.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.keyboard_arrow_left_outlined,
                color: Colors.white,
                size: 36,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const Text(
            'Laaarge Discounts',
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
