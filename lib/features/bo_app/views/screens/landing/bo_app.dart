import 'package:botest/features/bo_app/views/bloc/bobloc_bloc/bloc.dart';
import 'package:botest/features/bo_app/views/components/landing.dart';
import 'package:botest/features/bo_app/views/screens/landing/landing_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injection_container.dart';

class BoLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BodyO app'),
      ),
      body: SingleChildScrollView(
        child: buildBody(context),
      ),
    );
  }

  BlocProvider<BodyOBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<BodyOBloc>(),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        child: BlocBuilder<BodyOBloc, BodyOState>(
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
