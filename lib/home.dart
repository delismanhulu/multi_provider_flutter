import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multi_provider/height_provider.dart';
import 'package:multi_provider/weight_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var weightProvider = Provider.of<WeightProvider>(context);
    var heightProvider = Provider.of<HeightProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Aplikasi Hitung Berat Badan',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),

            Text(
              'Lebar (KG) :',
              style: TextStyle(fontSize: 20),
            ),
            // Note : Menggunakan Consumer
            // Consumer<WeightProvider>(
            //   builder: (context, weightProvider, _) => Slider(
            //     min: 1,
            //     max: 100,
            //     divisions: 100,
            //     label: weightProvider.weight.round().toString(),
            //     value: weightProvider.weight,
            //     onChanged: (newValue) {
            //       newValue = newValue.roundToDouble();
            //       print('weight : $newValue');
            //       weightProvider.weight = newValue;
            //     },
            //   ),
            // ),

            // Note : Menggunakan Of Contect

            Slider(
              min: 1,
              max: 100,
              divisions: 100,
              label: weightProvider.weight.round().toString(),
              value: weightProvider.weight,
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                print('weight : $newValue');
                weightProvider.weight = newValue;
              },
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              'Tinggi (CM) :',
              style: TextStyle(fontSize: 20),
            ),

            // Note : Menggunakan Consumer
            // Consumer<HeightProvider>(
            //   builder: (context, heightProvider, _) => Slider(
            //     min: 1,
            //     max: 200,
            //     divisions: 200,
            //     label: heightProvider.height.round().toString(),
            //     value: heightProvider.height,
            //     activeColor: Colors.blue[900],
            //     inactiveColor: Colors.blue[900].withOpacity(0.2),
            //     onChanged: (newValue) {
            //       newValue = newValue.roundToDouble();
            //       print('weight : $newValue');
            //       heightProvider.height = newValue;
            //     },
            //   ),
            // ),
            //

            // Note : Menggunakan Of Contect

            Slider(
              min: 1,
              max: 200,
              divisions: 200,
              label: heightProvider.height.round().toString(),
              value: heightProvider.height,
              activeColor: Colors.blue[900],
              inactiveColor: Colors.blue[900].withOpacity(0.2),
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                print('weight : $newValue');
                heightProvider.height = newValue;
              },
            ),

            SizedBox(
              height: 50,
            ),
            // Note : Menggunakan Consumer
            // Consumer<WeightProvider>(
            //   builder: (context, weightProvider, _) => Consumer<HeightProvider>(
            //     builder: (context, heightProvider, _) => Text(
            //       'Yout BMI \n  ${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
            //       style: TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.w500,
            //       ),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // ),

            // Note Menggunakan Of Context

            Text(
              'Yout BMI \n  ${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
