import 'package:app_food/bloc/authentication_bloc.dart';
import 'package:app_food/routes/route_named.dart';
import 'package:app_food/routes/routes_management.dart';
import 'package:app_food/utils/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'services/local_storage/app_shared_preference.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  final bool? isShownOnBoarding =
      await AppSharedPreference.readOnBoardingData();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp(
    isShownOnBoarding: isShownOnBoarding,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isShownOnBoarding});

  final bool? isShownOnBoarding;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (context) => AuthenticationBloc(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Montserrat',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: isShownOnBoarding == true
            ? RouteNamed.homePage
            : RouteNamed.onBoardingPage,
        onGenerateRoute: (settings) => RouteManager.routeManagement(settings),
      ),
    );
  }
}
