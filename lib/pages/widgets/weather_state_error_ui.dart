part of 'weather_state_ui.dart';

class WeatherStateErrorUi extends StatelessWidget {
  const WeatherStateErrorUi({super.key, required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMessage));
  }
}
