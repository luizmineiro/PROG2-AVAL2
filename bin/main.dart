import 'package:main/tsv_data.dart';
import 'package:main/csv_data.dart';
import 'package:main/json_data.dart';
import 'package:main/xml_data.dart';

void main(List<String> arguments) {
  CsvData csvFile = CsvData();
  TsvData tsvFile = TsvData();
  JsonData jsonFile = JsonData();
  XmlData xmlFile = XmlData();

  try {
    csvFile.load('test.csv');
  } catch (e) {
    print(e);
  }

  try {
    tsvFile.load('test.tsv');
  } catch (e) {
    print(e);
  }

  try {
    jsonFile.load('test.json');
  } catch (e) {
    print(e);
  }

  try {
    xmlFile.load('test.xml');
  } catch (e) {
    print(e);
  }

  jsonFile.data = '{\n  "name": "John",\n  "age": 30,\n  "city": "New York"\n}';
  // print(jsonFile.data);
  xmlFile.data = '<person>\n  <name>John</name>\n  <age>30</age>\n  <city>New York</city>\n</person>';
  xmlFile.save();
  // print(xmlFile.data);
  csvFile.data = 'John,30,New York';
  // print(csvFile.data);
  tsvFile.data = 'John\t30\tNew York';
  // print(tsvFile.data);

  // print(jsonFile.fields());
  // print(xmlFile.fields());
  // print(csvFile.fields());
  // print(tsvFile.fields());

  print('José Fhilipe Martins Coelho\nJoão Luiz Mineiro Alves\nFernando Soares de Araujo Filho');
}
