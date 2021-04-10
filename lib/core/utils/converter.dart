import 'package:dartz/dartz.dart';
import 'package:pancakeapp/core/error/failure.dart';

class Converter {
  Either<Failure, int> stringToUnsignedInt(String str) {
    try {
      final integer = int.parse(str);
      if (integer < 0) throw FormatException();
      return Right(integer);
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }

  Either<Failure, String> extractSVGName(String str) {
    try {
      final name = str.substring(12, str.length - 4);
      return Right(name);
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends Failure {}
