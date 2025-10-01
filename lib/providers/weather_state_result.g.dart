// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state_result.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WeatherStateResult)
const weatherStateResultProvider = WeatherStateResultProvider._();

final class WeatherStateResultProvider
    extends $AsyncNotifierProvider<WeatherStateResult, WeatherState> {
  const WeatherStateResultProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherStateResultProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherStateResultHash();

  @$internal
  @override
  WeatherStateResult create() => WeatherStateResult();
}

String _$weatherStateResultHash() =>
    r'69d6b3b010b9a71e3331c77088937de5e5b78773';

abstract class _$WeatherStateResult extends $AsyncNotifier<WeatherState> {
  FutureOr<WeatherState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<WeatherState>, WeatherState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<WeatherState>, WeatherState>,
              AsyncValue<WeatherState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
