// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchLocationList)
const fetchLocationListProvider = FetchLocationListProvider._();

final class FetchLocationListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Location>>,
          List<Location>,
          FutureOr<List<Location>>
        >
    with $FutureModifier<List<Location>>, $FutureProvider<List<Location>> {
  const FetchLocationListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchLocationListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchLocationListHash();

  @$internal
  @override
  $FutureProviderElement<List<Location>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Location>> create(Ref ref) {
    return fetchLocationList(ref);
  }
}

String _$fetchLocationListHash() => r'47443dcd2d468062cb9e20619f126c366810ec0d';
