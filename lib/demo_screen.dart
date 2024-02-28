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
        title: const Text('Demo screen'),
      ),
      body: SafeArea(
        child: Column(
          children: [

           const Spacer(),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Flutter text
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.grey,
                child: const Text(
                  'Flutter Text 👍👍👍👍 👍👍👍👍 ',
                  style: TextStyle(
                      fontSize: 17
                  ),
                ),
              ),
              // Native text
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.grey,
                child: const NativeLabel(
                  'Native Text 👍👍👍👍 👍👍👍👍 ',
                  style: TextStyle(
                      fontSize: 17
                  ),
                ),
              ),

            ]),
            SizedBox(height: 200),
            Center(
               child:ElevatedButton(
                  child: Text('Tap me'),
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
            SizedBox(height: 50),
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
