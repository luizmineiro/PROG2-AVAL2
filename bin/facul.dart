import 'package:facul/json_data.dart';

void main(List<String> arguments) {
  var newFile = JsonData();

  newFile.load('test.csv');
  
  // newFile.data.split('\n').forEach((line) {
  //   print(line);
  // });

  newFile.data = 'Fhilipe	20	phb	pi';
  // print(newFile.data);
}
