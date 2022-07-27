import 'package:facul/data.dart';

class TsvData extends Data {
  TsvData(String fileName) : super() {
    load(fileName);
  }
}
