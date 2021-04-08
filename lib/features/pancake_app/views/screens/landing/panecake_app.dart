import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pancakeapp/features/pancake_app/views/bloc/pancake_bloc/bloc.dart';
import 'package:pancakeapp/features/pancake_app/views/components/landing.dart';
import 'package:pancakeapp/features/pancake_app/views/screens/landing/landing_responsive.dart';

import '../../../../../injection_container.dart';

class PancakeLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pancake app'),
      ),
      body: SingleChildScrollView(
        child: buildBody(context),
      ),
    );
  }

  BlocProvider<PancakeBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<PancakeBloc>(),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        child: BlocBuilder<PancakeBloc, PancakeState>(
          builder: (context, state) {
            if (state is Loading) {
              return LoadingWidget();
            } else if (state is Loaded) {
              return LandingResponsive(
                informativeWidget: LandingWidget(),
                actionWidget: LoginButtons(),
              );
            } else if (state is Error) {
              return LandingResponsive(
                  informativeWidget: LandingWidget(),
                  actionWidget: ErrorView(message: state.message));
            } else {
              return SplashScreen();
            }
          },
        ),
      ),
    );
  }
}
