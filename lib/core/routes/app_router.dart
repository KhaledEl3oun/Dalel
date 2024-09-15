import 'package:first_app/core/services/services_locator.dart';
import 'package:first_app/features/auth/presesntation/auth_cubit/cubit/auth_cubit.dart';
import 'package:first_app/features/auth/presesntation/view/registerView.dart';
import 'package:first_app/features/auth/presesntation/view/signIn_view.dart';
import 'package:first_app/features/onBoarding/presentaion/view/on_boarding_view.dart';
import 'package:first_app/features/splash/presentation/view/splashView.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const splashView(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => const OnBoardingView(),
  ),
  GoRoute(
    path: "/register",
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: const RegisterView(),
    ),
  ),
  GoRoute(
    path: "/signIn",
    builder: (context, state) => BlocProvider(
      create: (context) =>  getIt<AuthCubit>(),
      child: const SigninView(),
    ),
  ),
]);
