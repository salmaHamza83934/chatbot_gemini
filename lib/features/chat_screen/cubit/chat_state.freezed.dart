// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) loading,
    required TResult Function(List<MessageModel> messages) success,
    required TResult Function(String error) failure,
    required TResult Function(List<ChatHiveModel> chatHistory) historyLoaded,
    required TResult Function(ChatHiveModel newChat) chatCreated,
    required TResult Function() chatDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(List<MessageModel> messages)? success,
    TResult? Function(String error)? failure,
    TResult? Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult? Function(ChatHiveModel newChat)? chatCreated,
    TResult? Function()? chatDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    TResult Function(List<MessageModel> messages)? success,
    TResult Function(String error)? failure,
    TResult Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult Function(ChatHiveModel newChat)? chatCreated,
    TResult Function()? chatDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitialState value) initial,
    required TResult Function(ChatLoadingState value) loading,
    required TResult Function(ChatSuccessState value) success,
    required TResult Function(ChatFailureState value) failure,
    required TResult Function(ChatHistoryLoadedState value) historyLoaded,
    required TResult Function(ChatCreatedState value) chatCreated,
    required TResult Function(ChatDeletedState value) chatDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitialState value)? initial,
    TResult? Function(ChatLoadingState value)? loading,
    TResult? Function(ChatSuccessState value)? success,
    TResult? Function(ChatFailureState value)? failure,
    TResult? Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult? Function(ChatCreatedState value)? chatCreated,
    TResult? Function(ChatDeletedState value)? chatDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitialState value)? initial,
    TResult Function(ChatLoadingState value)? loading,
    TResult Function(ChatSuccessState value)? success,
    TResult Function(ChatFailureState value)? failure,
    TResult Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult Function(ChatCreatedState value)? chatCreated,
    TResult Function(ChatDeletedState value)? chatDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChatInitialStateImplCopyWith<$Res> {
  factory _$$ChatInitialStateImplCopyWith(_$ChatInitialStateImpl value,
          $Res Function(_$ChatInitialStateImpl) then) =
      __$$ChatInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatInitialStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatInitialStateImpl>
    implements _$$ChatInitialStateImplCopyWith<$Res> {
  __$$ChatInitialStateImplCopyWithImpl(_$ChatInitialStateImpl _value,
      $Res Function(_$ChatInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatInitialStateImpl implements ChatInitialState {
  const _$ChatInitialStateImpl();

  @override
  String toString() {
    return 'ChatState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) loading,
    required TResult Function(List<MessageModel> messages) success,
    required TResult Function(String error) failure,
    required TResult Function(List<ChatHiveModel> chatHistory) historyLoaded,
    required TResult Function(ChatHiveModel newChat) chatCreated,
    required TResult Function() chatDeleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(List<MessageModel> messages)? success,
    TResult? Function(String error)? failure,
    TResult? Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult? Function(ChatHiveModel newChat)? chatCreated,
    TResult? Function()? chatDeleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    TResult Function(List<MessageModel> messages)? success,
    TResult Function(String error)? failure,
    TResult Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult Function(ChatHiveModel newChat)? chatCreated,
    TResult Function()? chatDeleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitialState value) initial,
    required TResult Function(ChatLoadingState value) loading,
    required TResult Function(ChatSuccessState value) success,
    required TResult Function(ChatFailureState value) failure,
    required TResult Function(ChatHistoryLoadedState value) historyLoaded,
    required TResult Function(ChatCreatedState value) chatCreated,
    required TResult Function(ChatDeletedState value) chatDeleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitialState value)? initial,
    TResult? Function(ChatLoadingState value)? loading,
    TResult? Function(ChatSuccessState value)? success,
    TResult? Function(ChatFailureState value)? failure,
    TResult? Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult? Function(ChatCreatedState value)? chatCreated,
    TResult? Function(ChatDeletedState value)? chatDeleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitialState value)? initial,
    TResult Function(ChatLoadingState value)? loading,
    TResult Function(ChatSuccessState value)? success,
    TResult Function(ChatFailureState value)? failure,
    TResult Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult Function(ChatCreatedState value)? chatCreated,
    TResult Function(ChatDeletedState value)? chatDeleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChatInitialState implements ChatState {
  const factory ChatInitialState() = _$ChatInitialStateImpl;
}

/// @nodoc
abstract class _$$ChatLoadingStateImplCopyWith<$Res> {
  factory _$$ChatLoadingStateImplCopyWith(_$ChatLoadingStateImpl value,
          $Res Function(_$ChatLoadingStateImpl) then) =
      __$$ChatLoadingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ChatLoadingStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatLoadingStateImpl>
    implements _$$ChatLoadingStateImplCopyWith<$Res> {
  __$$ChatLoadingStateImplCopyWithImpl(_$ChatLoadingStateImpl _value,
      $Res Function(_$ChatLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ChatLoadingStateImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatLoadingStateImpl implements ChatLoadingState {
  const _$ChatLoadingStateImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ChatState.loading(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatLoadingStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatLoadingStateImplCopyWith<_$ChatLoadingStateImpl> get copyWith =>
      __$$ChatLoadingStateImplCopyWithImpl<_$ChatLoadingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) loading,
    required TResult Function(List<MessageModel> messages) success,
    required TResult Function(String error) failure,
    required TResult Function(List<ChatHiveModel> chatHistory) historyLoaded,
    required TResult Function(ChatHiveModel newChat) chatCreated,
    required TResult Function() chatDeleted,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(List<MessageModel> messages)? success,
    TResult? Function(String error)? failure,
    TResult? Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult? Function(ChatHiveModel newChat)? chatCreated,
    TResult? Function()? chatDeleted,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    TResult Function(List<MessageModel> messages)? success,
    TResult Function(String error)? failure,
    TResult Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult Function(ChatHiveModel newChat)? chatCreated,
    TResult Function()? chatDeleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitialState value) initial,
    required TResult Function(ChatLoadingState value) loading,
    required TResult Function(ChatSuccessState value) success,
    required TResult Function(ChatFailureState value) failure,
    required TResult Function(ChatHistoryLoadedState value) historyLoaded,
    required TResult Function(ChatCreatedState value) chatCreated,
    required TResult Function(ChatDeletedState value) chatDeleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitialState value)? initial,
    TResult? Function(ChatLoadingState value)? loading,
    TResult? Function(ChatSuccessState value)? success,
    TResult? Function(ChatFailureState value)? failure,
    TResult? Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult? Function(ChatCreatedState value)? chatCreated,
    TResult? Function(ChatDeletedState value)? chatDeleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitialState value)? initial,
    TResult Function(ChatLoadingState value)? loading,
    TResult Function(ChatSuccessState value)? success,
    TResult Function(ChatFailureState value)? failure,
    TResult Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult Function(ChatCreatedState value)? chatCreated,
    TResult Function(ChatDeletedState value)? chatDeleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatLoadingState implements ChatState {
  const factory ChatLoadingState({final String? message}) =
      _$ChatLoadingStateImpl;

  String? get message;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatLoadingStateImplCopyWith<_$ChatLoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSuccessStateImplCopyWith<$Res> {
  factory _$$ChatSuccessStateImplCopyWith(_$ChatSuccessStateImpl value,
          $Res Function(_$ChatSuccessStateImpl) then) =
      __$$ChatSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageModel> messages});
}

/// @nodoc
class __$$ChatSuccessStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatSuccessStateImpl>
    implements _$$ChatSuccessStateImplCopyWith<$Res> {
  __$$ChatSuccessStateImplCopyWithImpl(_$ChatSuccessStateImpl _value,
      $Res Function(_$ChatSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$ChatSuccessStateImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$ChatSuccessStateImpl implements ChatSuccessState {
  const _$ChatSuccessStateImpl({required final List<MessageModel> messages})
      : _messages = messages;

  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.success(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSuccessStateImplCopyWith<_$ChatSuccessStateImpl> get copyWith =>
      __$$ChatSuccessStateImplCopyWithImpl<_$ChatSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) loading,
    required TResult Function(List<MessageModel> messages) success,
    required TResult Function(String error) failure,
    required TResult Function(List<ChatHiveModel> chatHistory) historyLoaded,
    required TResult Function(ChatHiveModel newChat) chatCreated,
    required TResult Function() chatDeleted,
  }) {
    return success(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(List<MessageModel> messages)? success,
    TResult? Function(String error)? failure,
    TResult? Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult? Function(ChatHiveModel newChat)? chatCreated,
    TResult? Function()? chatDeleted,
  }) {
    return success?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    TResult Function(List<MessageModel> messages)? success,
    TResult Function(String error)? failure,
    TResult Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult Function(ChatHiveModel newChat)? chatCreated,
    TResult Function()? chatDeleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitialState value) initial,
    required TResult Function(ChatLoadingState value) loading,
    required TResult Function(ChatSuccessState value) success,
    required TResult Function(ChatFailureState value) failure,
    required TResult Function(ChatHistoryLoadedState value) historyLoaded,
    required TResult Function(ChatCreatedState value) chatCreated,
    required TResult Function(ChatDeletedState value) chatDeleted,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitialState value)? initial,
    TResult? Function(ChatLoadingState value)? loading,
    TResult? Function(ChatSuccessState value)? success,
    TResult? Function(ChatFailureState value)? failure,
    TResult? Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult? Function(ChatCreatedState value)? chatCreated,
    TResult? Function(ChatDeletedState value)? chatDeleted,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitialState value)? initial,
    TResult Function(ChatLoadingState value)? loading,
    TResult Function(ChatSuccessState value)? success,
    TResult Function(ChatFailureState value)? failure,
    TResult Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult Function(ChatCreatedState value)? chatCreated,
    TResult Function(ChatDeletedState value)? chatDeleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ChatSuccessState implements ChatState {
  const factory ChatSuccessState({required final List<MessageModel> messages}) =
      _$ChatSuccessStateImpl;

  List<MessageModel> get messages;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSuccessStateImplCopyWith<_$ChatSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatFailureStateImplCopyWith<$Res> {
  factory _$$ChatFailureStateImplCopyWith(_$ChatFailureStateImpl value,
          $Res Function(_$ChatFailureStateImpl) then) =
      __$$ChatFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ChatFailureStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatFailureStateImpl>
    implements _$$ChatFailureStateImplCopyWith<$Res> {
  __$$ChatFailureStateImplCopyWithImpl(_$ChatFailureStateImpl _value,
      $Res Function(_$ChatFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ChatFailureStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatFailureStateImpl implements ChatFailureState {
  const _$ChatFailureStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ChatState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatFailureStateImplCopyWith<_$ChatFailureStateImpl> get copyWith =>
      __$$ChatFailureStateImplCopyWithImpl<_$ChatFailureStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) loading,
    required TResult Function(List<MessageModel> messages) success,
    required TResult Function(String error) failure,
    required TResult Function(List<ChatHiveModel> chatHistory) historyLoaded,
    required TResult Function(ChatHiveModel newChat) chatCreated,
    required TResult Function() chatDeleted,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(List<MessageModel> messages)? success,
    TResult? Function(String error)? failure,
    TResult? Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult? Function(ChatHiveModel newChat)? chatCreated,
    TResult? Function()? chatDeleted,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    TResult Function(List<MessageModel> messages)? success,
    TResult Function(String error)? failure,
    TResult Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult Function(ChatHiveModel newChat)? chatCreated,
    TResult Function()? chatDeleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitialState value) initial,
    required TResult Function(ChatLoadingState value) loading,
    required TResult Function(ChatSuccessState value) success,
    required TResult Function(ChatFailureState value) failure,
    required TResult Function(ChatHistoryLoadedState value) historyLoaded,
    required TResult Function(ChatCreatedState value) chatCreated,
    required TResult Function(ChatDeletedState value) chatDeleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitialState value)? initial,
    TResult? Function(ChatLoadingState value)? loading,
    TResult? Function(ChatSuccessState value)? success,
    TResult? Function(ChatFailureState value)? failure,
    TResult? Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult? Function(ChatCreatedState value)? chatCreated,
    TResult? Function(ChatDeletedState value)? chatDeleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitialState value)? initial,
    TResult Function(ChatLoadingState value)? loading,
    TResult Function(ChatSuccessState value)? success,
    TResult Function(ChatFailureState value)? failure,
    TResult Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult Function(ChatCreatedState value)? chatCreated,
    TResult Function(ChatDeletedState value)? chatDeleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ChatFailureState implements ChatState {
  const factory ChatFailureState({required final String error}) =
      _$ChatFailureStateImpl;

  String get error;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatFailureStateImplCopyWith<_$ChatFailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatHistoryLoadedStateImplCopyWith<$Res> {
  factory _$$ChatHistoryLoadedStateImplCopyWith(
          _$ChatHistoryLoadedStateImpl value,
          $Res Function(_$ChatHistoryLoadedStateImpl) then) =
      __$$ChatHistoryLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatHiveModel> chatHistory});
}

/// @nodoc
class __$$ChatHistoryLoadedStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatHistoryLoadedStateImpl>
    implements _$$ChatHistoryLoadedStateImplCopyWith<$Res> {
  __$$ChatHistoryLoadedStateImplCopyWithImpl(
      _$ChatHistoryLoadedStateImpl _value,
      $Res Function(_$ChatHistoryLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatHistory = null,
  }) {
    return _then(_$ChatHistoryLoadedStateImpl(
      null == chatHistory
          ? _value._chatHistory
          : chatHistory // ignore: cast_nullable_to_non_nullable
              as List<ChatHiveModel>,
    ));
  }
}

/// @nodoc

class _$ChatHistoryLoadedStateImpl implements ChatHistoryLoadedState {
  const _$ChatHistoryLoadedStateImpl(final List<ChatHiveModel> chatHistory)
      : _chatHistory = chatHistory;

  final List<ChatHiveModel> _chatHistory;
  @override
  List<ChatHiveModel> get chatHistory {
    if (_chatHistory is EqualUnmodifiableListView) return _chatHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatHistory);
  }

  @override
  String toString() {
    return 'ChatState.historyLoaded(chatHistory: $chatHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatHistoryLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._chatHistory, _chatHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_chatHistory));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatHistoryLoadedStateImplCopyWith<_$ChatHistoryLoadedStateImpl>
      get copyWith => __$$ChatHistoryLoadedStateImplCopyWithImpl<
          _$ChatHistoryLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) loading,
    required TResult Function(List<MessageModel> messages) success,
    required TResult Function(String error) failure,
    required TResult Function(List<ChatHiveModel> chatHistory) historyLoaded,
    required TResult Function(ChatHiveModel newChat) chatCreated,
    required TResult Function() chatDeleted,
  }) {
    return historyLoaded(chatHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(List<MessageModel> messages)? success,
    TResult? Function(String error)? failure,
    TResult? Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult? Function(ChatHiveModel newChat)? chatCreated,
    TResult? Function()? chatDeleted,
  }) {
    return historyLoaded?.call(chatHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    TResult Function(List<MessageModel> messages)? success,
    TResult Function(String error)? failure,
    TResult Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult Function(ChatHiveModel newChat)? chatCreated,
    TResult Function()? chatDeleted,
    required TResult orElse(),
  }) {
    if (historyLoaded != null) {
      return historyLoaded(chatHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitialState value) initial,
    required TResult Function(ChatLoadingState value) loading,
    required TResult Function(ChatSuccessState value) success,
    required TResult Function(ChatFailureState value) failure,
    required TResult Function(ChatHistoryLoadedState value) historyLoaded,
    required TResult Function(ChatCreatedState value) chatCreated,
    required TResult Function(ChatDeletedState value) chatDeleted,
  }) {
    return historyLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitialState value)? initial,
    TResult? Function(ChatLoadingState value)? loading,
    TResult? Function(ChatSuccessState value)? success,
    TResult? Function(ChatFailureState value)? failure,
    TResult? Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult? Function(ChatCreatedState value)? chatCreated,
    TResult? Function(ChatDeletedState value)? chatDeleted,
  }) {
    return historyLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitialState value)? initial,
    TResult Function(ChatLoadingState value)? loading,
    TResult Function(ChatSuccessState value)? success,
    TResult Function(ChatFailureState value)? failure,
    TResult Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult Function(ChatCreatedState value)? chatCreated,
    TResult Function(ChatDeletedState value)? chatDeleted,
    required TResult orElse(),
  }) {
    if (historyLoaded != null) {
      return historyLoaded(this);
    }
    return orElse();
  }
}

abstract class ChatHistoryLoadedState implements ChatState {
  const factory ChatHistoryLoadedState(final List<ChatHiveModel> chatHistory) =
      _$ChatHistoryLoadedStateImpl;

  List<ChatHiveModel> get chatHistory;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatHistoryLoadedStateImplCopyWith<_$ChatHistoryLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatCreatedStateImplCopyWith<$Res> {
  factory _$$ChatCreatedStateImplCopyWith(_$ChatCreatedStateImpl value,
          $Res Function(_$ChatCreatedStateImpl) then) =
      __$$ChatCreatedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatHiveModel newChat});
}

/// @nodoc
class __$$ChatCreatedStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatCreatedStateImpl>
    implements _$$ChatCreatedStateImplCopyWith<$Res> {
  __$$ChatCreatedStateImplCopyWithImpl(_$ChatCreatedStateImpl _value,
      $Res Function(_$ChatCreatedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newChat = null,
  }) {
    return _then(_$ChatCreatedStateImpl(
      null == newChat
          ? _value.newChat
          : newChat // ignore: cast_nullable_to_non_nullable
              as ChatHiveModel,
    ));
  }
}

/// @nodoc

class _$ChatCreatedStateImpl implements ChatCreatedState {
  const _$ChatCreatedStateImpl(this.newChat);

  @override
  final ChatHiveModel newChat;

  @override
  String toString() {
    return 'ChatState.chatCreated(newChat: $newChat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatCreatedStateImpl &&
            (identical(other.newChat, newChat) || other.newChat == newChat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newChat);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatCreatedStateImplCopyWith<_$ChatCreatedStateImpl> get copyWith =>
      __$$ChatCreatedStateImplCopyWithImpl<_$ChatCreatedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) loading,
    required TResult Function(List<MessageModel> messages) success,
    required TResult Function(String error) failure,
    required TResult Function(List<ChatHiveModel> chatHistory) historyLoaded,
    required TResult Function(ChatHiveModel newChat) chatCreated,
    required TResult Function() chatDeleted,
  }) {
    return chatCreated(newChat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(List<MessageModel> messages)? success,
    TResult? Function(String error)? failure,
    TResult? Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult? Function(ChatHiveModel newChat)? chatCreated,
    TResult? Function()? chatDeleted,
  }) {
    return chatCreated?.call(newChat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    TResult Function(List<MessageModel> messages)? success,
    TResult Function(String error)? failure,
    TResult Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult Function(ChatHiveModel newChat)? chatCreated,
    TResult Function()? chatDeleted,
    required TResult orElse(),
  }) {
    if (chatCreated != null) {
      return chatCreated(newChat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitialState value) initial,
    required TResult Function(ChatLoadingState value) loading,
    required TResult Function(ChatSuccessState value) success,
    required TResult Function(ChatFailureState value) failure,
    required TResult Function(ChatHistoryLoadedState value) historyLoaded,
    required TResult Function(ChatCreatedState value) chatCreated,
    required TResult Function(ChatDeletedState value) chatDeleted,
  }) {
    return chatCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitialState value)? initial,
    TResult? Function(ChatLoadingState value)? loading,
    TResult? Function(ChatSuccessState value)? success,
    TResult? Function(ChatFailureState value)? failure,
    TResult? Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult? Function(ChatCreatedState value)? chatCreated,
    TResult? Function(ChatDeletedState value)? chatDeleted,
  }) {
    return chatCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitialState value)? initial,
    TResult Function(ChatLoadingState value)? loading,
    TResult Function(ChatSuccessState value)? success,
    TResult Function(ChatFailureState value)? failure,
    TResult Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult Function(ChatCreatedState value)? chatCreated,
    TResult Function(ChatDeletedState value)? chatDeleted,
    required TResult orElse(),
  }) {
    if (chatCreated != null) {
      return chatCreated(this);
    }
    return orElse();
  }
}

abstract class ChatCreatedState implements ChatState {
  const factory ChatCreatedState(final ChatHiveModel newChat) =
      _$ChatCreatedStateImpl;

  ChatHiveModel get newChat;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatCreatedStateImplCopyWith<_$ChatCreatedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatDeletedStateImplCopyWith<$Res> {
  factory _$$ChatDeletedStateImplCopyWith(_$ChatDeletedStateImpl value,
          $Res Function(_$ChatDeletedStateImpl) then) =
      __$$ChatDeletedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatDeletedStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatDeletedStateImpl>
    implements _$$ChatDeletedStateImplCopyWith<$Res> {
  __$$ChatDeletedStateImplCopyWithImpl(_$ChatDeletedStateImpl _value,
      $Res Function(_$ChatDeletedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatDeletedStateImpl implements ChatDeletedState {
  const _$ChatDeletedStateImpl();

  @override
  String toString() {
    return 'ChatState.chatDeleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatDeletedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) loading,
    required TResult Function(List<MessageModel> messages) success,
    required TResult Function(String error) failure,
    required TResult Function(List<ChatHiveModel> chatHistory) historyLoaded,
    required TResult Function(ChatHiveModel newChat) chatCreated,
    required TResult Function() chatDeleted,
  }) {
    return chatDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(List<MessageModel> messages)? success,
    TResult? Function(String error)? failure,
    TResult? Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult? Function(ChatHiveModel newChat)? chatCreated,
    TResult? Function()? chatDeleted,
  }) {
    return chatDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    TResult Function(List<MessageModel> messages)? success,
    TResult Function(String error)? failure,
    TResult Function(List<ChatHiveModel> chatHistory)? historyLoaded,
    TResult Function(ChatHiveModel newChat)? chatCreated,
    TResult Function()? chatDeleted,
    required TResult orElse(),
  }) {
    if (chatDeleted != null) {
      return chatDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitialState value) initial,
    required TResult Function(ChatLoadingState value) loading,
    required TResult Function(ChatSuccessState value) success,
    required TResult Function(ChatFailureState value) failure,
    required TResult Function(ChatHistoryLoadedState value) historyLoaded,
    required TResult Function(ChatCreatedState value) chatCreated,
    required TResult Function(ChatDeletedState value) chatDeleted,
  }) {
    return chatDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitialState value)? initial,
    TResult? Function(ChatLoadingState value)? loading,
    TResult? Function(ChatSuccessState value)? success,
    TResult? Function(ChatFailureState value)? failure,
    TResult? Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult? Function(ChatCreatedState value)? chatCreated,
    TResult? Function(ChatDeletedState value)? chatDeleted,
  }) {
    return chatDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitialState value)? initial,
    TResult Function(ChatLoadingState value)? loading,
    TResult Function(ChatSuccessState value)? success,
    TResult Function(ChatFailureState value)? failure,
    TResult Function(ChatHistoryLoadedState value)? historyLoaded,
    TResult Function(ChatCreatedState value)? chatCreated,
    TResult Function(ChatDeletedState value)? chatDeleted,
    required TResult orElse(),
  }) {
    if (chatDeleted != null) {
      return chatDeleted(this);
    }
    return orElse();
  }
}

abstract class ChatDeletedState implements ChatState {
  const factory ChatDeletedState() = _$ChatDeletedStateImpl;
}
