import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/features/auth/presesntation/auth_cubit/cubit/auth_state.dart';
import 'package:first_app/features/auth/presesntation/view/widgets/TermsAndConditionWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  bool? termsAndConditionCheck = false;
  GlobalKey<FormState> signInKey = GlobalKey();
  createUserWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignInErrorState(error: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignInErrorState(
            error: 'The account already exists for that email.'));
      }
    } catch (e) {
      emit(SignInErrorState(error: e.toString()));
    }
  }

  updateTermsAndConditionCheck({required newValue}) {
    termsAndConditionCheck = newValue;
    emit(TermsAndConditionUpdateState());
  }
}
