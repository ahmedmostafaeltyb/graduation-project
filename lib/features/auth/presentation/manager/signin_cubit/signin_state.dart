import 'package:graduation_project/features/auth/data/models/user_model.dart';

abstract class SigninCubitState {}

class SigninCubitInitial extends SigninCubitState {}

class SigninCubitLoading extends SigninCubitState {}

class SigninCubitSuccess extends SigninCubitState 
{
  UserModel userModel;
  SigninCubitSuccess({required this.userModel});
}

class SigninCubitError extends SigninCubitState {
  final String errorMessage;
  SigninCubitError({required this.errorMessage});
}
