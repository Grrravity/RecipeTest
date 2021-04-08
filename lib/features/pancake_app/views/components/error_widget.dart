import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pancakeapp/features/pancake_app/views/bloc/pancake_bloc/bloc.dart';

class ErrorView extends StatefulWidget {
  final String message;
  const ErrorView({Key? key, required this.message}) : super(key: key);

  @override
  _ErrorViewState createState() => _ErrorViewState();
}

class _ErrorViewState extends State<ErrorView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Center(
        child: Column(
          children: [
            Text(
              widget.message,
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: ElevatedButton(
                  child: Text('Rafraichir'),
                  onPressed: () {
                    _refresh();
                  }),
            ),
          ],
        ),
      ),
    );
  }

  _refresh() {
    BlocProvider.of<PancakeBloc>(context).add(RefreshPressed());
  }
}
