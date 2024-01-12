import 'package:almotamayez/views/widgets/favoraite/customfavorders.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const MainText.title("المفضلة")),
      body: ListView(
        children: const [CustomFavOrders()],
      ),
    );
  }
}
