import 'package:first_app/core/widget/customBtn.dart';
import 'package:first_app/features/auth/presesntation/auth_cubit/cubit/auth_cubit.dart';
import 'package:first_app/features/auth/presesntation/auth_cubit/cubit/auth_state.dart';
import 'package:first_app/features/auth/presesntation/view/widgets/TermsAndConditionWidget.dart';
import 'package:first_app/features/auth/presesntation/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
            child: Column(
          children: [
            CustomTextFormField(
              text: 'first name',
              bottom: 14,
              onChanged: (firstName) {
                BlocProvider.of<AuthCubit>(context).firstName = firstName;
              },
            ),
            CustomTextFormField(
              text: 'last name',
              bottom: 14,
              onChanged: (lastName) {
                BlocProvider.of<AuthCubit>(context).lastName = lastName;
              },
            ),
            CustomTextFormField(
                text: 'email address',
                bottom: 14,
                onChanged: (emailAdderess) {
                  BlocProvider.of<AuthCubit>(context).emailAddress =
                      emailAdderess;
                }),
            CustomTextFormField(
              text: 'password',
              bottom: 0,
              onChanged: (password) {
                BlocProvider.of<AuthCubit>(context).password = password;
              },
            ),
            const TermsAndConditionWidget(),
            const Gap(77),
            Custombtn(
              text: 'Sign Up',
              onPressed: () {
                BlocProvider.of<AuthCubit>(context)
                    .createUserWithEmailAndPassword();
              },
            ),
          ],
        ));
      },
    );
  }
}
