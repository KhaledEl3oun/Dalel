import 'package:first_app/core/widget/customBtn.dart';
import 'package:first_app/features/auth/presesntation/view/widgets/TermsAndConditionWidget.dart';
import 'package:first_app/features/auth/presesntation/view/widgets/customSignUpForm.dart';
import 'package:first_app/features/auth/presesntation/view/widgets/customTextField.dart';
import 'package:first_app/features/auth/presesntation/view/widgets/registerFooter.dart';
import 'package:first_app/features/auth/presesntation/view/widgets/welcomeText.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterviewState();
}

class _RegisterviewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Gap(122),
            ),
            SliverToBoxAdapter(
              child: WlecomeText(),
            ),
            SliverToBoxAdapter(
              child: CustomSignUpForm(),
            ),
            SliverToBoxAdapter(
              child: Gap(34),
            ),
            SliverToBoxAdapter(child: Gap(16)),
            SliverToBoxAdapter(child: RegisterFooter()),
          ],
        ),
      ),
    );
  }
}

