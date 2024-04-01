// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_purchase_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContractPurchaseState {
  int get max => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;
  double get netYield => throw _privateConstructorUsedError;
  String get totalReturn => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContractPurchaseStateCopyWith<ContractPurchaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractPurchaseStateCopyWith<$Res> {
  factory $ContractPurchaseStateCopyWith(ContractPurchaseState value,
          $Res Function(ContractPurchaseState) then) =
      _$ContractPurchaseStateCopyWithImpl<$Res, ContractPurchaseState>;
  @useResult
  $Res call(
      {int max,
      int min,
      double netYield,
      String totalReturn,
      String? errorMessage});
}

/// @nodoc
class _$ContractPurchaseStateCopyWithImpl<$Res,
        $Val extends ContractPurchaseState>
    implements $ContractPurchaseStateCopyWith<$Res> {
  _$ContractPurchaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? max = null,
    Object? min = null,
    Object? netYield = null,
    Object? totalReturn = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      netYield: null == netYield
          ? _value.netYield
          : netYield // ignore: cast_nullable_to_non_nullable
              as double,
      totalReturn: null == totalReturn
          ? _value.totalReturn
          : totalReturn // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractPurchaseStateImplCopyWith<$Res>
    implements $ContractPurchaseStateCopyWith<$Res> {
  factory _$$ContractPurchaseStateImplCopyWith(
          _$ContractPurchaseStateImpl value,
          $Res Function(_$ContractPurchaseStateImpl) then) =
      __$$ContractPurchaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int max,
      int min,
      double netYield,
      String totalReturn,
      String? errorMessage});
}

/// @nodoc
class __$$ContractPurchaseStateImplCopyWithImpl<$Res>
    extends _$ContractPurchaseStateCopyWithImpl<$Res,
        _$ContractPurchaseStateImpl>
    implements _$$ContractPurchaseStateImplCopyWith<$Res> {
  __$$ContractPurchaseStateImplCopyWithImpl(_$ContractPurchaseStateImpl _value,
      $Res Function(_$ContractPurchaseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? max = null,
    Object? min = null,
    Object? netYield = null,
    Object? totalReturn = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ContractPurchaseStateImpl(
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      netYield: null == netYield
          ? _value.netYield
          : netYield // ignore: cast_nullable_to_non_nullable
              as double,
      totalReturn: null == totalReturn
          ? _value.totalReturn
          : totalReturn // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ContractPurchaseStateImpl implements _ContractPurchaseState {
  const _$ContractPurchaseStateImpl(
      {required this.max,
      required this.min,
      required this.netYield,
      required this.totalReturn,
      this.errorMessage});

  @override
  final int max;
  @override
  final int min;
  @override
  final double netYield;
  @override
  final String totalReturn;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ContractPurchaseState(max: $max, min: $min, netYield: $netYield, totalReturn: $totalReturn, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractPurchaseStateImpl &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.netYield, netYield) ||
                other.netYield == netYield) &&
            (identical(other.totalReturn, totalReturn) ||
                other.totalReturn == totalReturn) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, max, min, netYield, totalReturn, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractPurchaseStateImplCopyWith<_$ContractPurchaseStateImpl>
      get copyWith => __$$ContractPurchaseStateImplCopyWithImpl<
          _$ContractPurchaseStateImpl>(this, _$identity);
}

abstract class _ContractPurchaseState implements ContractPurchaseState {
  const factory _ContractPurchaseState(
      {required final int max,
      required final int min,
      required final double netYield,
      required final String totalReturn,
      final String? errorMessage}) = _$ContractPurchaseStateImpl;

  @override
  int get max;
  @override
  int get min;
  @override
  double get netYield;
  @override
  String get totalReturn;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ContractPurchaseStateImplCopyWith<_$ContractPurchaseStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
