import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const MainText.title("الشات")),
      body: ListView(),
    );
  }
}
