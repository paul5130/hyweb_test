// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state_resullt.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WeatherStateResullt)
const weatherStateResulltProvider = WeatherStateResulltProvider._();

final class WeatherStateResulltProvider
    extends $AsyncNotifierProvider<WeatherStateResullt, WeatherState> {
  const WeatherStateResulltProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherStateResulltProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherStateResulltHash();

  @$internal
  @override
  WeatherStateResullt create() => WeatherStateResullt();
}

String _$weatherStateResulltHash() =>
    r'8123a5bb3e70597d29833cfdc77a2bc39f99818a';

abstract class _$WeatherStateResullt extends $AsyncNotifier<WeatherState> {
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
