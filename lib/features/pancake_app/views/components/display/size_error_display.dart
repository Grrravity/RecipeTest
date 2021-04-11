import 'package:flutter/material.dart';

class SizeError extends StatelessWidget {
  const SizeError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: Image.asset(
                  "assets/pictures/size_error.png",
                  fit: BoxFit.contain,
                ),
              ),
              MediaQuery.of(context).size.height < 190 ||
                      MediaQuery.of(context).size.width < 190
                  ? SizedBox(
                      height: 0,
                    )
                  : Container(
                      child: Text(
                        "Your screen size is too small to cook properly",
                        style: Theme.of(context).textTheme.subtitle1,
                        textAlign: TextAlign.center,
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
