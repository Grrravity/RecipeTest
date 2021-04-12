import 'package:flutter/foundation.dart';
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
                if (kIsWeb && MediaQuery.of(context).size.width < 311 ||
                    MediaQuery.of(context).size.height < 500) {
                  return SizeError();
                } else {
                  if (kIsWeb)
                    return AspectRatio(
                        aspectRatio: 4 / 3,
                        child: RecipeView(recipeData: state.data));
                  else
                    return RecipeView(recipeData: state.data);
                }
              } else {
                BlocProvider.of<PancakeBloc>(context).add(ViewCreation());
                return LoadingWidget();
              }
            },
          )),
    );
  }
}
