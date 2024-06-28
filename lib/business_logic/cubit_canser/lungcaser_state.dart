part of 'lungcaser_cubit.dart';

@immutable
abstract class LungcaserState {}

 class LungcaserInitial extends LungcaserState {}

class LungcaserLoading extends LungcaserState {}

class LungcaserSuccess extends LungcaserState {
  final UserDataResponse message;
  LungcaserSuccess(this.message);
}

class LungcaserError extends LungcaserState {
  final String error;
  LungcaserError(this.error);
}