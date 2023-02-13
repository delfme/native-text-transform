import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:cube_transition/cube_transition.dart';
import 'package:flutter_native_text_input_example/demo_page.dart';
import 'package:flutter_native_label/flutter_native_label.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);
  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat screen'),
      ),
      body: SafeArea(
        child: Column(
          children: [

           const Spacer(),
            Center(
              child:Container(
                padding: EdgeInsets.all(20),
                color: Colors.grey,
                child: const NativeLabel(
                  'Sampel Text 👍👍👍👍 👍👍👍👍 ',
                ),
              ),
            ),
          Center(
               child:ElevatedButton(
                  child: Text('Rotate'),
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                       Navigator.of(context).push(
                       CubePageRoute(
                        enterPage: DemoPage(),
                        exitPage: context.widget,
                        duration: const Duration(milliseconds: 500),
                       ),
                      );
                  },
                ),
            ),
          ],
        ),
      ),
    );
  }
}

extension StringUtils on String {
  double get va {
    final values = split('@');
    final num psValue =
        int.tryParse(values.first) ?? double.tryParse(values.first) ?? 0;
    final num fontSize =
        int.tryParse(values.last) ?? double.tryParse(values.last) ?? 0;
    return psValue * fontSize / 1000;
  }
}