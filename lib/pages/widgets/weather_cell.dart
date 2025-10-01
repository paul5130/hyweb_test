import 'package:flutter/material.dart';
import 'package:hyweb_test/viewmodels/weather_result_viewmodel.dart';

class WeatherCell extends StatelessWidget {
  const WeatherCell({super.key, required this.viewModel});
  final WeatherResultViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text('${viewModel.startTime} - ${viewModel.endTime}'),
          Row(
            children: [
              SizedBox(width: 150, child: Text('天氣現象')),
              Text(viewModel.description),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 150, child: Text('降雨機率')),
              Text(viewModel.rainProbability),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 150, child: Text('溫度')),
              Text('${viewModel.maxTemperature} - ${viewModel.minTemperature}'),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 150, child: Text('舒適度')),
              Text(viewModel.comfortIndex),
            ],
          ),
        ],
      ),
    );
  }
}
