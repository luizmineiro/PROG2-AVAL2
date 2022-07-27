import 'package:facul/json_data.dart';

void main(List<String> arguments) {
  print('Main');
  var newFile = JsonData('test.json');

  print('New file: ${newFile.data}');
}
