import 'package:main/data.dart';

abstract class DelimitedData extends Data {
  String separator();

  @override
  set data(String file) {
    String fileString = "";
    // _file.openSync(mode: FileMode.append).writeStringSync(file, encoding: utf8);
    var bufferFile = super.file.readAsStringSync().split('\n');
    bufferFile.add(file);
    for (var element in bufferFile) {
      fileString += '$element\n';
    }
    super.file.writeAsStringSync(fileString);
  }

  @override
  List<String> fields() {
    var listFile = data.split("\n");
    return listFile[0].split(separator());
  }
}
