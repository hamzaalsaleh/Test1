import 'package:almotamayez/core/helper/extensions/assetss_widgets.dart';
import 'package:almotamayez/views/widgets/main_page.dart';
import 'package:almotamayez/views/widgets/main_text.dart';
import 'package:flutter/material.dart';

import '../../../providers/x_provider.dart';
import '../../widgets/main_button.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      Provider.of<XProvider>(context, listen: false).getData;
    });
  }

  @override
  Widget build(BuildContext context) {
    final x = Provider.of<XProvider>(context);
    return MainPage(
      isPure: true,
      body: Center(
        child: Padding(
          padding: 16.aEdge,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MainText('${x.count}'),
              16.sSize,
              MainButton(
                onPressed: () {
                  x.addCount();
                },
                child: const MainText.buttonText('Add Count'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
