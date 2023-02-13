import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            // Checkbox(
            //     value: _sliderEnabled,
            //     onChanged: (value) {
            //       _sliderEnabled = value ?? true;
            //       setState(() {});
            //     }),
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnabled,
                onChanged: (value) {
                  setState(() {
                    _sliderEnabled = value ?? true;
                  });
                }),
            SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnabled,
                onChanged: (value) {
                  setState(() {
                    _sliderEnabled = value;
                  });
                }),
            const AboutListTile(),
            Image(
              image: const NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM6z-OLTMoIUmFvDYh5Bu3OM5MvoDK9iSB2A&usqp=CAU'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
