import 'package:app_food/pages/comfirm_reservation/components/row_info.dart';
import 'package:app_food/utils/assets_management.dart';
import 'package:flutter/material.dart';

class NoteSection extends StatelessWidget {
  const NoteSection({Key? key, this.bgColor}) : super(key: key);
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor ?? const Color(0xFFF6EFE8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
        child: RowInfo(
          imagePath: AssetsManagement.editFillIcon,
          title: 'Window Seats',
        ),
      ),
    );
  }
}
