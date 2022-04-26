import 'package:flutter/material.dart';
import 'package:sqlcrud/core/infra/init.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final init = InfraInit();
  void _start() {
    Future.wait([
      init.ensureInitialized(),
      Future.delayed(
        const Duration(seconds: 2),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
