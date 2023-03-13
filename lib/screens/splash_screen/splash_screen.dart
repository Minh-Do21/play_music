
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/size_config.dart';
import '../../utils/app_const/barrel_const.dart';
import '../../utils/app_const/image_const.dart';
import '../app_router.dart';
import 'bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => SplashBloc(),
      child: const SplashScreenForm(),
    );
  }
}

class SplashScreenForm extends StatefulWidget {
  const SplashScreenForm({Key? key}) : super(key: key);

  @override
  _SplashScreenFormState createState() => _SplashScreenFormState();
}

class _SplashScreenFormState extends State<SplashScreenForm> {
  final imageLogo = Image.asset(
    IMAGE_CONST.logo.path,
    fit: BoxFit.cover,
    width: getProportionateScreenWidth(120),
  );

  @override
  void initState() {
    super.initState();
    context.read<SplashBloc>().add(LoadDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) async {

        if (state is GoToDashBoardScreen) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            AppRouter.DASHBOARD_SCREEN,
            (route) => false,
          );  
        }
        
        if (state is GoToLoginScreen) {
        //   Navigator.pushNamedAndRemoveUntil(
        //     context,
        //     AppRouter.LOGIN_SCREEN,
        //     (route) => false,
        //   );
        // } else if (state is GoToDashBoardScreen) {
        //   Navigator.pushNamedAndRemoveUntil(
        //     context,
        //     AppRouter.DASHBOARD_SCREEN,
        //     (route) => false,
        //   );
        }
      },
      child: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [COLOR_CONST.pomegranate, COLOR_CONST.white, COLOR_CONST.crusta])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
              child: Container(
                  // margin: const EdgeInsets.symmetric(horizontal: 83),
                  child: imageLogo)),
        ),
      ),
    );
  }
}