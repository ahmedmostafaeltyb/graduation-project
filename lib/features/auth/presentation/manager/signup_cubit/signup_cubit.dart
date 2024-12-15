import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/auth/data/repos/auth_repo.dart';

import 'signup_state.dart';


class SignupCubit extends Cubit<SignupCubitState> {
  SignupCubit(this.authRepo) : super(SignupCubitInitial());

  final AuthRepo authRepo;
  Future<void> createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
    required String phoneNumber,
    required String location,
    required String birthDate,
    required String bloodType,
  }) async {
    emit(SignupCubitLoading());
    final result = await authRepo.createUserWithEmailAndPassword(
      userName: userName,
      email: email,
      password: password,
      phoneNumber: phoneNumber,
      location: location,
      birthDate: birthDate,
      bloodType: bloodType,
    );

    result.fold(
      (l) => emit(
        SignupCubitError(errorMessage: l.errMessage),
      ),
      (r) => emit(
        SignupCubitSuccess(userModel: r),
      ),
    );
  }
}
