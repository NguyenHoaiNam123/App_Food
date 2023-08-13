import 'package:app_food/components/primary_button.dart';
import 'package:app_food/data/reservation_model.dart';
import 'package:app_food/pages/comfirm_reservation/components/note_section.dart';
import 'package:app_food/pages/comfirm_reservation/components/payments_section.dart';
import 'package:app_food/pages/comfirm_reservation/components/reservation_info_section.dart';
import 'package:app_food/pages/comfirm_reservation/components/user_info_section.dart';
import 'package:app_food/pages/user/components/reservation_tracking_status.dart';
import 'package:flutter/material.dart';

class ReservationInDetailPage extends StatelessWidget {
  const ReservationInDetailPage({Key? key, this.reservationModel})
      : super(key: key);

  final ReservationModel? reservationModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 32,
          ),
        ),
        backgroundColor: Colors.orange[50],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: Text(
                        '#716001',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ReservationTrackingStatus(item: reservationModel),
                    SizedBox(
                      height: 10,
                    ),
                    ReservationInfoSection(),
                    SizedBox(
                      height: 10,
                    ),
                    UserInfoSection(),
                    SizedBox(
                      height: 10,
                    ),
                    NoteSection(),
                    SizedBox(
                      height: 10,
                    ),
                    PaymentsSection(),
                    SizedBox(
                      height: 18,
                    ),
                  ],
                ),
              ),
            ),
            PrimaryButton(
              onPressed: () async {
                Navigator.pop(context);
              },
              title: 'RE - RESERVATION',
            )
          ],
        ),
      ),
    );
  }
}
