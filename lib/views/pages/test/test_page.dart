import 'package:almotamayez/views/pages/test/home.dart';
import 'package:almotamayez/views/widgets/main_page.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  void initState() {
    super.initState();
    nav();
  }

  nav() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => Home(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MainPage(
      isPure: true,
      body: Center(child: Image.asset("assets/images/logo (1).png")),
    );
  }
}
