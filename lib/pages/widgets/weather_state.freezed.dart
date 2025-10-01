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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WeatherStateList value)?  list,TResult Function( WeatherStateResult value)?  result,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WeatherStateList() when list != null:
return list(_that);case WeatherStateResult() when result != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WeatherStateList value)  list,required TResult Function( WeatherStateResult value)  result,}){
final _that = this;
switch (_that) {
case WeatherStateList():
return list(_that);case WeatherStateResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WeatherStateList value)?  list,TResult? Function( WeatherStateResult value)?  result,}){
final _that = this;
switch (_that) {
case WeatherStateList() when list != null:
return list(_that);case WeatherStateResult() when result != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<WeatherCardViewModel> list)?  list,TResult Function( WeatherCardViewModel weatherCardViewModel)?  result,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WeatherStateList() when list != null:
return list(_that.list);case WeatherStateResult() when result != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<WeatherCardViewModel> list)  list,required TResult Function( WeatherCardViewModel weatherCardViewModel)  result,}) {final _that = this;
switch (_that) {
case WeatherStateList():
return list(_that.list);case WeatherStateResult():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<WeatherCardViewModel> list)?  list,TResult? Function( WeatherCardViewModel weatherCardViewModel)?  result,}) {final _that = this;
switch (_that) {
case WeatherStateList() when list != null:
return list(_that.list);case WeatherStateResult() when result != null:
return result(_that.weatherCardViewModel);case _:
  return null;

}
}

}

/// @nodoc


class WeatherStateList implements WeatherState {
  const WeatherStateList({required final  List<WeatherCardViewModel> list}): _list = list;
  

 final  List<WeatherCardViewModel> _list;
 List<WeatherCardViewModel> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}


/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherStateListCopyWith<WeatherStateList> get copyWith => _$WeatherStateListCopyWithImpl<WeatherStateList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherStateList&&const DeepCollectionEquality().equals(other._list, _list));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list));

@override
String toString() {
  return 'WeatherState.list(list: $list)';
}


}

/// @nodoc
abstract mixin class $WeatherStateListCopyWith<$Res> implements $WeatherStateCopyWith<$Res> {
  factory $WeatherStateListCopyWith(WeatherStateList value, $Res Function(WeatherStateList) _then) = _$WeatherStateListCopyWithImpl;
@useResult
$Res call({
 List<WeatherCardViewModel> list
});




}
/// @nodoc
class _$WeatherStateListCopyWithImpl<$Res>
    implements $WeatherStateListCopyWith<$Res> {
  _$WeatherStateListCopyWithImpl(this._self, this._then);

  final WeatherStateList _self;
  final $Res Function(WeatherStateList) _then;

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? list = null,}) {
  return _then(WeatherStateList(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<WeatherCardViewModel>,
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
