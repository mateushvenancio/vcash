import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vcash/presenter/widgets/vcash_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _init() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    GoRouter.of(context).replaceNamed('/home');
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.lightBlue,
        alignment: Alignment.center,
        child: const VcashLogo(
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
