import 'package:main/delimited_data.dart'; 
import 'dart:io';

class TsvData extends DelimitedData {
  @override
  void load(String fileName) {
    if(!fileName.contains('.tsv')) throw FormatException("Formato inválido");
    super.file = File(fileName);
    super.bufferFile = file.readAsStringSync();
  }

  @override String separator() => '\t';
}
