import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:graduation_project/business_logic/repo/repository.dart';
import 'package:graduation_project/data/test.dart';
import 'package:meta/meta.dart';

part 'braintumor_state.dart';

class BraintumorCubit extends Cubit<BraintumorState> {
  BraintumorCubit() : super(BraintumorInitial());
   Future<void> uploadBrainTest({required MultipartFile image, required String token}) async {
    emit(BraintumorLoading());
    try {
      final response = await HomeRepo().braintumor('ai/upload-breast-cancer', token, image);
      final message = UserDataResponse.fromJson(response);
      emit(BraintumorSuccess(message));
    } catch (e) {
      emit(BraintumorError('Something went wrong. Please try again.'));
}
  }
}
