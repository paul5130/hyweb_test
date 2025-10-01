import 'package:flutter/material.dart';
import 'package:hyweb_test/viewmodels/weather_result_viewmodel.dart';

class WeatherCell extends StatelessWidget {
  const WeatherCell({super.key, required this.viewModel});
  final WeatherResultViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              '${viewModel.startTime} - ${viewModel.endTime}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(
                  width: 150,
                  child: Text('天氣現象', style: TextStyle(fontSize: 20)),
                ),
                Text(viewModel.description, style: TextStyle(fontSize: 20)),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(
                  width: 150,
                  child: Text('降雨機率', style: TextStyle(fontSize: 20)),
                ),
                Text(viewModel.rainProbability, style: TextStyle(fontSize: 20)),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(
                  width: 150,
                  child: Text('溫度', style: TextStyle(fontSize: 20)),
                ),
                Text(
                  '${viewModel.maxTemperature} - ${viewModel.minTemperature}',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(
                  width: 150,
                  child: Text('舒適度', style: TextStyle(fontSize: 20)),
                ),
                Text(viewModel.comfortIndex, style: TextStyle(fontSize: 20)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
