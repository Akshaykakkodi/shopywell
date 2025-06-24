// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_boarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OnBoardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onPageChanged,
    required TResult Function() onPrev,
    required TResult Function() onNext,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? onPageChanged,
    TResult? Function()? onPrev,
    TResult? Function()? onNext,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onPageChanged,
    TResult Function()? onPrev,
    TResult Function()? onNext,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPageChanged value) onPageChanged,
    required TResult Function(OnPrev value) onPrev,
    required TResult Function(OnNext value) onNext,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnPageChanged value)? onPageChanged,
    TResult? Function(OnPrev value)? onPrev,
    TResult? Function(OnNext value)? onNext,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPageChanged value)? onPageChanged,
    TResult Function(OnPrev value)? onPrev,
    TResult Function(OnNext value)? onNext,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingEventCopyWith<$Res> {
  factory $OnBoardingEventCopyWith(
    OnBoardingEvent value,
    $Res Function(OnBoardingEvent) then,
  ) = _$OnBoardingEventCopyWithImpl<$Res, OnBoardingEvent>;
}

/// @nodoc
class _$OnBoardingEventCopyWithImpl<$Res, $Val extends OnBoardingEvent>
    implements $OnBoardingEventCopyWith<$Res> {
  _$OnBoardingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnPageChangedImplCopyWith<$Res> {
  factory _$$OnPageChangedImplCopyWith(
    _$OnPageChangedImpl value,
    $Res Function(_$OnPageChangedImpl) then,
  ) = __$$OnPageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$OnPageChangedImplCopyWithImpl<$Res>
    extends _$OnBoardingEventCopyWithImpl<$Res, _$OnPageChangedImpl>
    implements _$$OnPageChangedImplCopyWith<$Res> {
  __$$OnPageChangedImplCopyWithImpl(
    _$OnPageChangedImpl _value,
    $Res Function(_$OnPageChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$OnPageChangedImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$OnPageChangedImpl implements OnPageChanged {
  const _$OnPageChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'OnBoardingEvent.onPageChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPageChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPageChangedImplCopyWith<_$OnPageChangedImpl> get copyWith =>
      __$$OnPageChangedImplCopyWithImpl<_$OnPageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onPageChanged,
    required TResult Function() onPrev,
    required TResult Function() onNext,
  }) {
    return onPageChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? onPageChanged,
    TResult? Function()? onPrev,
    TResult? Function()? onNext,
  }) {
    return onPageChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onPageChanged,
    TResult Function()? onPrev,
    TResult Function()? onNext,
    required TResult orElse(),
  }) {
    if (onPageChanged != null) {
      return onPageChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPageChanged value) onPageChanged,
    required TResult Function(OnPrev value) onPrev,
    required TResult Function(OnNext value) onNext,
  }) {
    return onPageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnPageChanged value)? onPageChanged,
    TResult? Function(OnPrev value)? onPrev,
    TResult? Function(OnNext value)? onNext,
  }) {
    return onPageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPageChanged value)? onPageChanged,
    TResult Function(OnPrev value)? onPrev,
    TResult Function(OnNext value)? onNext,
    required TResult orElse(),
  }) {
    if (onPageChanged != null) {
      return onPageChanged(this);
    }
    return orElse();
  }
}

abstract class OnPageChanged implements OnBoardingEvent {
  const factory OnPageChanged(final int index) = _$OnPageChangedImpl;

  int get index;

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnPageChangedImplCopyWith<_$OnPageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPrevImplCopyWith<$Res> {
  factory _$$OnPrevImplCopyWith(
    _$OnPrevImpl value,
    $Res Function(_$OnPrevImpl) then,
  ) = __$$OnPrevImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnPrevImplCopyWithImpl<$Res>
    extends _$OnBoardingEventCopyWithImpl<$Res, _$OnPrevImpl>
    implements _$$OnPrevImplCopyWith<$Res> {
  __$$OnPrevImplCopyWithImpl(
    _$OnPrevImpl _value,
    $Res Function(_$OnPrevImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnPrevImpl implements OnPrev {
  const _$OnPrevImpl();

  @override
  String toString() {
    return 'OnBoardingEvent.onPrev()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnPrevImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onPageChanged,
    required TResult Function() onPrev,
    required TResult Function() onNext,
  }) {
    return onPrev();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? onPageChanged,
    TResult? Function()? onPrev,
    TResult? Function()? onNext,
  }) {
    return onPrev?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onPageChanged,
    TResult Function()? onPrev,
    TResult Function()? onNext,
    required TResult orElse(),
  }) {
    if (onPrev != null) {
      return onPrev();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPageChanged value) onPageChanged,
    required TResult Function(OnPrev value) onPrev,
    required TResult Function(OnNext value) onNext,
  }) {
    return onPrev(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnPageChanged value)? onPageChanged,
    TResult? Function(OnPrev value)? onPrev,
    TResult? Function(OnNext value)? onNext,
  }) {
    return onPrev?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPageChanged value)? onPageChanged,
    TResult Function(OnPrev value)? onPrev,
    TResult Function(OnNext value)? onNext,
    required TResult orElse(),
  }) {
    if (onPrev != null) {
      return onPrev(this);
    }
    return orElse();
  }
}

abstract class OnPrev implements OnBoardingEvent {
  const factory OnPrev() = _$OnPrevImpl;
}

/// @nodoc
abstract class _$$OnNextImplCopyWith<$Res> {
  factory _$$OnNextImplCopyWith(
    _$OnNextImpl value,
    $Res Function(_$OnNextImpl) then,
  ) = __$$OnNextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnNextImplCopyWithImpl<$Res>
    extends _$OnBoardingEventCopyWithImpl<$Res, _$OnNextImpl>
    implements _$$OnNextImplCopyWith<$Res> {
  __$$OnNextImplCopyWithImpl(
    _$OnNextImpl _value,
    $Res Function(_$OnNextImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnNextImpl implements OnNext {
  const _$OnNextImpl();

  @override
  String toString() {
    return 'OnBoardingEvent.onNext()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnNextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onPageChanged,
    required TResult Function() onPrev,
    required TResult Function() onNext,
  }) {
    return onNext();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? onPageChanged,
    TResult? Function()? onPrev,
    TResult? Function()? onNext,
  }) {
    return onNext?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onPageChanged,
    TResult Function()? onPrev,
    TResult Function()? onNext,
    required TResult orElse(),
  }) {
    if (onNext != null) {
      return onNext();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPageChanged value) onPageChanged,
    required TResult Function(OnPrev value) onPrev,
    required TResult Function(OnNext value) onNext,
  }) {
    return onNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnPageChanged value)? onPageChanged,
    TResult? Function(OnPrev value)? onPrev,
    TResult? Function(OnNext value)? onNext,
  }) {
    return onNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPageChanged value)? onPageChanged,
    TResult Function(OnPrev value)? onPrev,
    TResult Function(OnNext value)? onNext,
    required TResult orElse(),
  }) {
    if (onNext != null) {
      return onNext(this);
    }
    return orElse();
  }
}

abstract class OnNext implements OnBoardingEvent {
  const factory OnNext() = _$OnNextImpl;
}

/// @nodoc
mixin _$OnBoardingState {
  int get index => throw _privateConstructorUsedError;
  PageController get pageController => throw _privateConstructorUsedError;

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnBoardingStateCopyWith<OnBoardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingStateCopyWith<$Res> {
  factory $OnBoardingStateCopyWith(
    OnBoardingState value,
    $Res Function(OnBoardingState) then,
  ) = _$OnBoardingStateCopyWithImpl<$Res, OnBoardingState>;
  @useResult
  $Res call({int index, PageController pageController});
}

/// @nodoc
class _$OnBoardingStateCopyWithImpl<$Res, $Val extends OnBoardingState>
    implements $OnBoardingStateCopyWith<$Res> {
  _$OnBoardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null, Object? pageController = null}) {
    return _then(
      _value.copyWith(
            index:
                null == index
                    ? _value.index
                    : index // ignore: cast_nullable_to_non_nullable
                        as int,
            pageController:
                null == pageController
                    ? _value.pageController
                    : pageController // ignore: cast_nullable_to_non_nullable
                        as PageController,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OnBoardingStateImplCopyWith<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  factory _$$OnBoardingStateImplCopyWith(
    _$OnBoardingStateImpl value,
    $Res Function(_$OnBoardingStateImpl) then,
  ) = __$$OnBoardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, PageController pageController});
}

/// @nodoc
class __$$OnBoardingStateImplCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$OnBoardingStateImpl>
    implements _$$OnBoardingStateImplCopyWith<$Res> {
  __$$OnBoardingStateImplCopyWithImpl(
    _$OnBoardingStateImpl _value,
    $Res Function(_$OnBoardingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null, Object? pageController = null}) {
    return _then(
      _$OnBoardingStateImpl(
        index:
            null == index
                ? _value.index
                : index // ignore: cast_nullable_to_non_nullable
                    as int,
        pageController:
            null == pageController
                ? _value.pageController
                : pageController // ignore: cast_nullable_to_non_nullable
                    as PageController,
      ),
    );
  }
}

/// @nodoc

class _$OnBoardingStateImpl implements _OnBoardingState {
  const _$OnBoardingStateImpl({
    required this.index,
    required this.pageController,
  });

  @override
  final int index;
  @override
  final PageController pageController;

  @override
  String toString() {
    return 'OnBoardingState(index: $index, pageController: $pageController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardingStateImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.pageController, pageController) ||
                other.pageController == pageController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, pageController);

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardingStateImplCopyWith<_$OnBoardingStateImpl> get copyWith =>
      __$$OnBoardingStateImplCopyWithImpl<_$OnBoardingStateImpl>(
        this,
        _$identity,
      );
}

abstract class _OnBoardingState implements OnBoardingState {
  const factory _OnBoardingState({
    required final int index,
    required final PageController pageController,
  }) = _$OnBoardingStateImpl;

  @override
  int get index;
  @override
  PageController get pageController;

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnBoardingStateImplCopyWith<_$OnBoardingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
