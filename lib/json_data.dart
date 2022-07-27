import 'package:facul/data.dart';

class JsonData extends Data {
  JsonData(String fileName) : super() {
    load(fileName);
  }
}
