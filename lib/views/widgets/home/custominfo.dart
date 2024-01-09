import 'package:flutter/material.dart';

class CustomInfo extends StatelessWidget {
  const CustomInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.location_on_outlined),
        Text("الاسكندرية، مصر"),
        Icon(Icons.arrow_drop_down_outlined),
      ],
    );
  }
}
