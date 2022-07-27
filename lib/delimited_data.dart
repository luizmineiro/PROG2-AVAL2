import 'package:facul/data.dart';

abstract class DelimitedData extends Data {
  DelimitedData(String fileName) : super() {
    load(fileName);
  }

  String separator(); 
}
