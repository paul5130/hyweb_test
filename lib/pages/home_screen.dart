import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyweb_test/pages/widgets/weather_state.dart';
import 'package:hyweb_test/pages/widgets/weather_state_ui.dart';
import 'package:hyweb_test/providers/weather_state_result.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late TextEditingController searchController;
  late FocusNode searchFocusNode;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    searchFocusNode = FocusNode();
    searchFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final weatherState = ref.watch(weatherStateResultProvider);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: TextField(
                controller: searchController,
                focusNode: searchFocusNode,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: '輸入城市名',
                ),
              ),
            ),
            if (searchFocusNode.hasFocus)
              TextButton(
                onPressed: () {
                  final city = searchController.text.trim();
                  ref
                      .read(weatherStateResultProvider.notifier)
                      .filterByCity(city);
                  searchFocusNode.unfocus();
                },
                child: const Text('確認'),
              ),
          ],
        ),
      ),
      body: weatherState.when(
        data: (state) => state.when(
          idle: () => WeatherStateIdleUi(),
          loading: () => WeatherStateLoadingUi(),
          error: (message) => WeatherStateErrorUi(errorMessage: message),
          result: (weatherCardViewModel) =>
              WeatherStateResultUi(weatherCardViewModel: weatherCardViewModel),
        ),
        error: (error, stackTrace) {
          return Center(child: Text(error.toString()));
        },
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
