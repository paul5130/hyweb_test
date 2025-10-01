part of 'weather_state_ui.dart';

class WeatherStateResultUi extends StatelessWidget {
  const WeatherStateResultUi({super.key, required this.weatherCardViewModel});
  final WeatherCardViewModel weatherCardViewModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: weatherCardViewModel.weatherResultViewModels
                .map((e) => WeatherCell(viewModel: e))
                .toList(),
          ),
        ),
      ),
    );
  }
}
