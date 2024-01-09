import 'package:almotamayez/providers/x_provider.dart';
import 'package:almotamayez/views/widgets/product/customrating.dart';
import 'package:flutter/material.dart';

import 'custom_details.dart';
import 'custom_quastion.dart';

class Slid extends StatelessWidget {
  const Slid({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> custom = [
      const CustomDetails(),
      const CustomRate(),
      const CustomQuastion()
    ];
    return Consumer<XProvider>(
        builder: (context, val, child) => PageView.builder(
              controller: val.pageController,
              itemCount: 3,
              onPageChanged: (value) {
                val.onpagechenged(value);
              },
              itemBuilder: (context, index) => custom[index],
            ));
  }
}
