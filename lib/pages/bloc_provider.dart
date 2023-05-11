import 'package:course_selling/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:course_selling/pages/welcome/bloc/welcome_blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocProviders {
  static get getAllBlocProvider => [
        //Multi
        BlocProvider(
          create: (context) => WelcomeBloc(),
        ),
        BlocProvider(create: (context) => SignInBloc())
      ];
}
