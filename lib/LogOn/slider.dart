import 'package:flutter/material.dart';

class SliderContainer extends StatefulWidget {
  @override

  _SliderContainerState createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  static double _lowerValue = 10.0;
  static double _upperValue = 300.0;

  double brightness = 0.0;

  RangeValues values = RangeValues(_lowerValue, _upperValue);

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 15,
      ),
      child: Slider(
        activeColor: Color.fromRGBO(102, 51, 3, 1),
        divisions: 20,
        label: brightness.abs().toString(),
        min: _lowerValue,
        max: _upperValue,
        value: brightness,
          onChanged: (val) {
            print(val);
            setState((){
              brightness = val;
            });
          },
      ),
    );
  }
}