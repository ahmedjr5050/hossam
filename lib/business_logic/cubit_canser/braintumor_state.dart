part of 'braintumor_cubit.dart';

@immutable
abstract class BraintumorState {}

class BraintumorInitial extends BraintumorState {}

class BraintumorLoading extends BraintumorState {}

class BraintumorSuccess extends BraintumorState {
 final UserDataResponse message;
  BraintumorSuccess(this.message);
}

class BraintumorError extends BraintumorState {
  final String error;
  BraintumorError(this.error);
}
