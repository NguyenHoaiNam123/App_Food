import 'package:app_food/data/reservation_model.dart';
import 'package:app_food/pages/about_us/about_us_page.dart';
import 'package:app_food/pages/authentication/forgot_password/forgot_password_get_otp_page.dart';
import 'package:app_food/pages/authentication/forgot_password/forgot_password_save_page.dart';
import 'package:app_food/pages/authentication/forgot_password/forgot_password_verify_otp_page.dart';
import 'package:app_food/pages/authentication/login_page.dart';
import 'package:app_food/pages/authentication/notify_save_success_page.dart';
import 'package:app_food/pages/authentication/sign_up_page.dart';
import 'package:app_food/pages/food_caterory/food_caterory_page.dart';
import 'package:app_food/pages/happy_deals/happy_deal_detail_page.dart';
import 'package:app_food/pages/happy_deals/happy_deal_reserve_page.dart';
import 'package:app_food/pages/happy_deals/happy_deals_page.dart';
import 'package:app_food/pages/home/homge_page.dart';
import 'package:app_food/pages/not_found/not_found_page.dart';
import 'package:app_food/pages/notification/notification_page.dart';
import 'package:app_food/pages/onboarding/onboarding_page.dart';
import 'package:app_food/pages/our_restaurant/our_restaurant_page.dart';
import 'package:app_food/pages/restaurant/restaurant_page.dart';
import 'package:app_food/pages/user/change_password_page.dart';
import 'package:app_food/pages/user/profile_page.dart';
import 'package:app_food/pages/user/reservation_history_page.dart';
import 'package:app_food/pages/user/reservation_in_detail_page.dart';
import 'package:app_food/pages/user/review_page.dart';
import 'package:app_food/routes/route_named.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static Route routeManagement(RouteSettings settings) {
    switch (settings.name) {
      case RouteNamed.homePage:
        {
          return MaterialPageRoute(
            builder: (context) => const HomePage(),
          );
        }
      case RouteNamed.onBoardingPage:
        {
          return MaterialPageRoute(
            builder: (context) => const OnBoardingPage(),
          );
        }
      case RouteNamed.notificationPage:
        {
          return MaterialPageRoute(
            builder: (context) => const NotificationPage(),
          );
        }
      case RouteNamed.foodCategoryPage:
        {
          return MaterialPageRoute(
            builder: (context) => const FoodCateroryPage(),
          );
        }
      case RouteNamed.restaurantListPage:
        {
          return MaterialPageRoute(
            builder: (context) => const OurRestaurantPage(),
          );
        }
      case RouteNamed.happyDealsPage:
        {
          return MaterialPageRoute(
            builder: (context) => const HappyDealsPage(),
          );
        }
      case RouteNamed.loginPage:
        {
          return MaterialPageRoute(
            builder: (context) => const LoginPage(),
          );
        }
      case RouteNamed.signUpPage:
        {
          return MaterialPageRoute(
            builder: (context) => const SignUpPage(),
          );
        }
      case RouteNamed.forgotPasswordGetOtpPage:
        {
          return MaterialPageRoute(
            builder: (context) => const ForgotPasswordGetOtpPage(),
          );
        }
      case RouteNamed.forgotPasswordVerifyOtpPage:
        {
          return MaterialPageRoute(
            builder: (context) => const ForgotPasswordVerifyOtpPage(),
          );
        }
      case RouteNamed.forgotPasswordSavePage:
        {
          return MaterialPageRoute(
            builder: (context) => const ForgotPasswordSavePage(),
          );
        }
      case RouteNamed.notifySaveSuccessPage:
        {
          return MaterialPageRoute(
            builder: (context) => const NotifySaveSuccessPage(),
          );
        }
      case RouteNamed.profilePage:
        {
          return MaterialPageRoute(
            builder: (context) => const ProfilePage(),
          );
        }
      case RouteNamed.aboutUsPage:
        {
          return MaterialPageRoute(
            builder: (context) => const AboutUsPage(),
          );
        }
      case RouteNamed.changePasswordPage:
        {
          return MaterialPageRoute(
            builder: (context) => const ChangePasswordPage(),
          );
        }
      case RouteNamed.reservationHistoryPage:
        {
          return MaterialPageRoute(
            builder: (context) => const ReservationHistoryPage(),
          );
        }
      case RouteNamed.reviewPage:
        {
          var arg = settings.arguments as ReservationModel?;
          return MaterialPageRoute(
            builder: (context) => ReviewPage(reservation: arg),
          );
        }
      case RouteNamed.happyDealDetailPage:
        {
          return MaterialPageRoute(
            builder: (context) => HappyDealDetailPage(),
          );
        }
      case RouteNamed.restaurantPage:
        {
          return MaterialPageRoute(
            builder: (context) => RestaurantPage(),
          );
        }
      case RouteNamed.happyDealReservePage:
        {
          return MaterialPageRoute(
            builder: (context) => const HappyDealReservePage(),
          );
        }
      case RouteNamed.reservationInDetailPage:
        {
          var arg = settings.arguments as ReservationModel?;
          return MaterialPageRoute(
            builder: (context) =>
                ReservationInDetailPage(reservationModel: arg),
          );
        }
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        );
    }
  }
}
