import 'package:facul/json_data.dart';

void main(List<String> arguments) {
  var newFile = JsonData();

  newFile.load('test.json');
  print(newFile.data);

  newFile.data = '{\n  "name": "ak47",\n  "price": 300\n}';
  print(newFile.data);
}
