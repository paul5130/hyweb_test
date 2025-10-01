// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WeatherState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WeatherState()';
}


}

/// @nodoc
class $WeatherStateCopyWith<$Res>  {
$WeatherStateCopyWith(WeatherState _, $Res Function(WeatherState) __);
}


/// Adds pattern-matching-related methods to [WeatherState].
extension WeatherStatePatterns on WeatherState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WeatherStateIdle value)?  idle,TResult Function( WeatherStateLoading value)?  loading,TResult Function( WeatherStateError value)?  error,TResult Function( WeatherStateResult value)?  result,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WeatherStateIdle() when idle != null:
return idle(_that);case WeatherStateLoading() when loading != null:
return loading(_that);case WeatherStateError() when error != null:
return error(_that);case WeatherStateResult() when result != null:
return result(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WeatherStateIdle value)  idle,required TResult Function( WeatherStateLoading value)  loading,required TResult Function( WeatherStateError value)  error,required TResult Function( WeatherStateResult value)  result,}){
final _that = this;
switch (_that) {
case WeatherStateIdle():
return idle(_that);case WeatherStateLoading():
return loading(_that);case WeatherStateError():
return error(_that);case WeatherStateResult():
return result(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WeatherStateIdle value)?  idle,TResult? Function( WeatherStateLoading value)?  loading,TResult? Function( WeatherStateError value)?  error,TResult? Function( WeatherStateResult value)?  result,}){
final _that = this;
switch (_that) {
case WeatherStateIdle() when idle != null:
return idle(_that);case WeatherStateLoading() when loading != null:
return loading(_that);case WeatherStateError() when error != null:
return error(_that);case WeatherStateResult() when result != null:
return result(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( WeatherCardViewModel weatherCardViewModel)?  result,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WeatherStateIdle() when idle != null:
return idle();case WeatherStateLoading() when loading != null:
return loading();case WeatherStateError() when error != null:
return error(_that.message);case WeatherStateResult() when result != null:
return result(_that.weatherCardViewModel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( WeatherCardViewModel weatherCardViewModel)  result,}) {final _that = this;
switch (_that) {
case WeatherStateIdle():
return idle();case WeatherStateLoading():
return loading();case WeatherStateError():
return error(_that.message);case WeatherStateResult():
return result(_that.weatherCardViewModel);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( WeatherCardViewModel weatherCardViewModel)?  result,}) {final _that = this;
switch (_that) {
case WeatherStateIdle() when idle != null:
return idle();case WeatherStateLoading() when loading != null:
return loading();case WeatherStateError() when error != null:
return error(_that.message);case WeatherStateResult() when result != null:
return result(_that.weatherCardViewModel);case _:
  return null;

}
}

}

/// @nodoc


class WeatherStateIdle implements WeatherState {
  const WeatherStateIdle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherStateIdle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WeatherState.idle()';
}


}




/// @nodoc


class WeatherStateLoading implements WeatherState {
  const WeatherStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WeatherState.loading()';
}


}




/// @nodoc


class WeatherStateError implements WeatherState {
  const WeatherStateError({required this.message});
  

 final  String message;

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherStateErrorCopyWith<WeatherStateError> get copyWith => _$WeatherStateErrorCopyWithImpl<WeatherStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'WeatherState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $WeatherStateErrorCopyWith<$Res> implements $WeatherStateCopyWith<$Res> {
  factory $WeatherStateErrorCopyWith(WeatherStateError value, $Res Function(WeatherStateError) _then) = _$WeatherStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$WeatherStateErrorCopyWithImpl<$Res>
    implements $WeatherStateErrorCopyWith<$Res> {
  _$WeatherStateErrorCopyWithImpl(this._self, this._then);

  final WeatherStateError _self;
  final $Res Function(WeatherStateError) _then;

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WeatherStateError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class WeatherStateResult implements WeatherState {
  const WeatherStateResult({required this.weatherCardViewModel});
  

 final  WeatherCardViewModel weatherCardViewModel;

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherStateResultCopyWith<WeatherStateResult> get copyWith => _$WeatherStateResultCopyWithImpl<WeatherStateResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherStateResult&&(identical(other.weatherCardViewModel, weatherCardViewModel) || other.weatherCardViewModel == weatherCardViewModel));
}


@override
int get hashCode => Object.hash(runtimeType,weatherCardViewModel);

@override
String toString() {
  return 'WeatherState.result(weatherCardViewModel: $weatherCardViewModel)';
}


}

/// @nodoc
abstract mixin class $WeatherStateResultCopyWith<$Res> implements $WeatherStateCopyWith<$Res> {
  factory $WeatherStateResultCopyWith(WeatherStateResult value, $Res Function(WeatherStateResult) _then) = _$WeatherStateResultCopyWithImpl;
@useResult
$Res call({
 WeatherCardViewModel weatherCardViewModel
});




}
/// @nodoc
class _$WeatherStateResultCopyWithImpl<$Res>
    implements $WeatherStateResultCopyWith<$Res> {
  _$WeatherStateResultCopyWithImpl(this._self, this._then);

  final WeatherStateResult _self;
  final $Res Function(WeatherStateResult) _then;

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? weatherCardViewModel = null,}) {
  return _then(WeatherStateResult(
weatherCardViewModel: null == weatherCardViewModel ? _self.weatherCardViewModel : weatherCardViewModel // ignore: cast_nullable_to_non_nullable
as WeatherCardViewModel,
  ));
}


}

// dart format on
