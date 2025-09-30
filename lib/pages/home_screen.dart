import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:hyweb_test/providers/location_list_provider.dart';

final searchProvider = StateProvider<String>((ref) => '');

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late TextEditingController searchController;
  @override
  void initState() {
    super.initState();
    searchController = TextEditingController(text: ref.read(searchProvider));
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final locationList = ref.watch(fetchLocationListProvider);
    final searchQuery = ref.watch(searchProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: locationList.when(
        data: (data) {
          final filteredList = searchQuery.isEmpty
              ? data
              : data
                    .where(
                      (location) => location.locationName
                          .toLowerCase()
                          .contains(searchQuery.toLowerCase()),
                    )
                    .toList();
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    labelText: '搜尋',
                    hintText: '輸入城市名',
                  ),
                  onChanged: (value) =>
                      ref.read(searchProvider.notifier).state = value,
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: ListView.builder(
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) =>
                        ListTile(title: Text(filteredList[index].locationName)),
                  ),
                ),
              ],
            ),
          );
        },
        error: (error, stackTrace) => Text(error.toString()),
        loading: () =>
            Center(child: const CircularProgressIndicator.adaptive()),
      ),
    );
  }
}
