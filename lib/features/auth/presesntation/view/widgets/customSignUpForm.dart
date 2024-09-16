import 'package:first_app/core/utils/app_color.dart';
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
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
            key: authCubit.signInKey,
            child: Column(
              children: [
                CustomTextFormField(
                  text: 'first name',
                  bottom: 14,
                  onChanged: (firstName) {
                    authCubit.firstName = firstName;
                  },
                ),
                CustomTextFormField(
                  text: 'last name',
                  bottom: 14,
                  onChanged: (lastName) {
                    authCubit.lastName = lastName;
                  },
                ),
                CustomTextFormField(
                    text: 'email address',
                    bottom: 14,
                    onChanged: (emailAdderess) {
                      authCubit.emailAddress = emailAdderess;
                    }),
                CustomTextFormField(
                   suffixIcon: IconButton(
                  icon: Icon(
                    authCubit.obscurePasswordTextValue == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  text: 'password',
                  bottom: 0,
                  onChanged: (password) {
                    authCubit.password = password;
                  },
                ),
                const TermsAndConditionWidget(),
                const Gap(77),
                Custombtn(
                  color: authCubit.termsAndConditionCheck == false
                      ? AppColors.grey
                      : null,
                  text: 'Sign Up',
                  onPressed: () {
                    if (authCubit.termsAndConditionCheck == true) {
                      if (authCubit.signInKey.currentState!.validate()) {
                        authCubit.createUserWithEmailAndPassword();
                      }
                    }
                  },
                ),
              ],
            ));
      },
    );
  }
}
