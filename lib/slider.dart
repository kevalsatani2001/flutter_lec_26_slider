import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Slider(
            value: sliderValue,
            onChanged: (value) => setState(() {
              sliderValue = value;
            }),
            min: 0,
            max: 100,
            label: "$sliderValue",
            activeColor: Colors.green,
            divisions: 6,
          ),
          const Tooltip(
            message: 'learn ABC',
            child: Icon(Icons.abc),
          )
        ],
      ),
    );
  }
}
