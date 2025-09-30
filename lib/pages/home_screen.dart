import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyweb_test/providers/location_list_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final locationList = ref.watch(fetchLocationListProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: locationList.when(
        data: (data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) =>
              ListTile(title: Text(data[index].locationName)),
        ),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
