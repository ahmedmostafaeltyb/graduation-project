import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/auth/data/repos/auth_repo.dart';
import 'package:graduation_project/features/auth/presentation/manager/signin_cubit/signin_state.dart';

class SigninCubit extends Cubit<SigninCubitState> {
  SigninCubit(this.authRepo) : super(SigninCubitInitial());

  final AuthRepo authRepo;

  Future<void> signinWithEmailAndPassword(String email, String password) async {
    emit(SigninCubitLoading());
    final result = await authRepo.signinWithEmailAndPassword(email, password);
    result.fold(
      (l) => emit(SigninCubitError(errorMessage: l.errMessage)),
      (r) => emit(SigninCubitSuccess(userModel: r)),
    );
  }
}
