part of 'weather_state_ui.dart';

class WeatherCardViewModel {
  final List<WeatherResultViewModel> weatherCellViewModels;
  WeatherCardViewModel({required this.weatherCellViewModels});
}

class WeatherStateResultUi extends StatelessWidget {
  const WeatherStateResultUi({super.key, required this.weatherCardViewModel});
  final WeatherCardViewModel weatherCardViewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: weatherCardViewModel.weatherCellViewModels
          .map((e) => WeatherCell(viewModel: e))
          .toList(),
    );
  }
}
