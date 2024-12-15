import 'package:graduation_project/features/auth/data/models/user_model.dart';

abstract class SignupCubitState {}

class SignupCubitInitial extends SignupCubitState {}

class SignupCubitLoading extends SignupCubitState {}

class SignupCubitSuccess extends SignupCubitState {
  UserModel userModel;
  SignupCubitSuccess({required this.userModel});
}

class SignupCubitError extends SignupCubitState {
  final String errorMessage;
  SignupCubitError({required this.errorMessage});
}
