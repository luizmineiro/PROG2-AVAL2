import 'package:facul/data.dart';

class CsvData extends Data {
  CsvData(String fileName) : super() {
    load(fileName);
  }
}
