import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:graduation_project/business_logic/repo/repository.dart';
import 'package:graduation_project/data/test.dart';
import 'package:meta/meta.dart';

part 'lungcaser_state.dart';

class LungcaserCubit extends Cubit<LungcaserState> {
  LungcaserCubit() : super(LungcaserInitial());
   Future<void> uploadBrainTest({required MultipartFile image, required String token}) async {
    emit(LungcaserLoading());
    try {
      final response = await HomeRepo().lungcancer('ai/upload-breast-cancer', token, image);
      final message = UserDataResponse.fromJson(response);
      emit(LungcaserSuccess(message));
    } catch (e) {
      emit(LungcaserError('Something went wrong. Please try again.'));
}
  }
}
