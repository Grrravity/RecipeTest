import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pancakeapp/features/pancake_app/views/bloc/pancake_bloc/bloc.dart';
import 'package:pancakeapp/features/pancake_app/views/components/recipe_view.dart';

import '../../../../injection_container.dart';

class PancakeLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<PancakeBloc>(),
      child: Container(
          alignment: Alignment.center,
          child: BlocBuilder<PancakeBloc, PancakeState>(
            builder: (context, state) {
              if (state is Loading) {
                return LoadingWidget();
              } else if (state is Loaded) {
                return RecipeView();
              } else {
                BlocProvider.of<PancakeBloc>(context).add(ViewCreation());
                return LoadingWidget();
              }
            },
          )),
    );
  }
}
