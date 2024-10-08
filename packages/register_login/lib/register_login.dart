library register_login;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:register_login/presentation/auth/pages/signup.dart';
import 'package:register_login/service_locator.dart';

class RegisterLoginDemo extends StatefulWidget {
  const RegisterLoginDemo({super.key});

  @override
  State<RegisterLoginDemo> createState() => _RegisterLoginDemoState();
}

class _RegisterLoginDemoState extends State<RegisterLoginDemo> {
  @override
  void initState() {
    super.initState();
    setupServiceLocator();
  }

  @override
  Widget build(BuildContext context) {
    return SignupPage();
  }
}
