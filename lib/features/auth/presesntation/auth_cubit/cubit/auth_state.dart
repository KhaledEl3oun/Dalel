sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignInLoadingState extends AuthState {}

final class SignInSuccessState extends AuthState {}

final class SignInErrorState extends AuthState {
  final String error;

  SignInErrorState({required this.error});
}

final class TermsAndConditionUpdateState extends AuthState {}