part of 'weather_state_ui.dart';

class WeatherStateLoadingUi extends StatelessWidget {
  const WeatherStateLoadingUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
