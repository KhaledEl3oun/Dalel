import 'package:first_app/core/widget/customBtn.dart';
import 'package:first_app/features/auth/presesntation/view/widgets/TermsAndConditionWidget.dart';
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Gap(122),
            ),
            const SliverToBoxAdapter(
              child: WlecomeText(),
            ),
            const SliverToBoxAdapter(
              child: Gap(34),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                text: 'first name',
                bottom: 14,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                text: 'last name',
                bottom: 14,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                text: 'email address',
                bottom: 14,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(text: 'password', bottom: 0),
            ),
            const SliverToBoxAdapter(child: TermsAndConditionWidget()),
            const SliverToBoxAdapter(child: Gap(77)),
            SliverToBoxAdapter(
                child: Custombtn(
              text: 'Sign Up',
              onPressed: () {},
            )),
            const SliverToBoxAdapter(child: Gap(16)),
            const SliverToBoxAdapter(child: RegisterFooter()),
          ],
        ),
      ),
    );
  }
}
