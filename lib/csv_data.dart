import 'package:main/delimited_data.dart';
import 'dart:io';

class CsvData extends DelimitedData {
  @override
  void load(String fileName) {
    if(!fileName.contains('.csv')) throw FormatException("Formato inválido");
    super.file = File(fileName);
    super.bufferFile = file.readAsStringSync();
  }

  @override String separator() => ',';
}
