import 'package:facul/tsv_data.dart';
import 'package:facul/csv_data.dart';
import 'package:facul/json_data.dart';
import 'package:facul/xml_data.dart';

void main(List<String> arguments) {
  // TODO modificar o load para ele não ler um arquivo que não for do tipo dele
  CsvData csvFile = CsvData();
  TsvData tsvFile = TsvData();
  JsonData jsonFile = JsonData();
  XmlData xmlFile = XmlData();

  csvFile.load('test.csv');
  print(csvFile.fields());

  tsvFile.load('test.tsv');
  print(tsvFile.fields());

  jsonFile.load('test.json');
  print(jsonFile.fields());

  xmlFile.load('test.xml');
  print(xmlFile.fields());

  // print('José Fhilipe Martins Coelho\nJoão Luiz Mineiro Alves\nFernando Soares de Araujo Filho');
}
