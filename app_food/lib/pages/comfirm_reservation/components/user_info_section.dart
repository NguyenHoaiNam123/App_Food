import 'package:app_food/bloc/authentication_bloc.dart';
import 'package:app_food/data/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInfoSection extends StatelessWidget {
  const UserInfoSection({Key? key, this.bgColor}) : super(key: key);
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
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            var userModel =
                state is AuthLoginSuccess ? state.userData : userModelMockData;
            return Row(
              children: [
                Image.asset(
                  userModel?.avatarPath ?? '',
                  height: 60,
                  width: 60,
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userModel?.name ?? '',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      userModel?.phone ?? '',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      userModel?.email ?? '',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
