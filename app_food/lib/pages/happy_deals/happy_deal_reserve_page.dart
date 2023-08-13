import 'package:app_food/pages/happy_deals/components/deal_title.dart';
import 'package:app_food/pages/happy_deals/components/reserve_detail.dart';
import 'package:flutter/material.dart';

class HappyDealReservePage extends StatefulWidget {
  const HappyDealReservePage({Key? key}) : super(key: key);

  @override
  State<HappyDealReservePage> createState() => _HappyDealReservePageState();
}

class _HappyDealReservePageState extends State<HappyDealReservePage> {
  bool _isStart = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        setState(() {
          _isStart = true;
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 3),
        curve: Curves.easeInOut,
        decoration: _isStart
            ? const BoxDecoration(
                gradient: LinearGradient(
                colors: [Color(0xFFFB6A70), Color(0xFFFCA384)],
              ))
            : const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFFCA384), Color(0xFFFB6A70)])),
        child: const SafeArea(
          child: Column(
            children: [
              DealTitle(),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: ReserveDetail(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
