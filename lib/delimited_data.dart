import 'package:main/data.dart';

abstract class DelimitedData extends Data {
  String separator();

  @override
  set data(String input) {
    super.bufferFile += "\n$input";
  }

  @override
  List<String> fields() {
    List<String> fields = data.split("\n");
    return fields[0].split(separator());
  }
}
