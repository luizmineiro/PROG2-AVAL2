import 'package:main/tsv_data.dart';
import 'package:main/csv_data.dart';
import 'package:main/json_data.dart';
import 'package:main/xml_data.dart';

void main(List<String> arguments) {
  // TODO modificar o load para ele não ler um arquivo que não for do tipo dele
  CsvData csvFile = CsvData();
  TsvData tsvFile = TsvData();
  JsonData jsonFile = JsonData();
  XmlData xmlFile = XmlData();

  try {
    csvFile.load('data.csv');
  } catch (e) {
    print(e);
  }

  try {
    tsvFile.load('data.tsv');
  } catch (e) {
    print(e);
  }

  try {
    jsonFile.load('data.json');
  } catch (e) {
    print(e);
  }

  try {
    xmlFile.load('data.xml');
  } catch (e) {
    print(e);
  }

  // print('José Fhilipe Martins Coelho\nJoão Luiz Mineiro Alves\nFernando Soares de Araujo Filho');
}
