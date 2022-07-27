import '../lib/json_data.dart';

void main(List<String> arguments) {
  print('Main');
  var newFile = JsonData();
  newFile.load();

  print('New file: ${newFile.data}');
}
