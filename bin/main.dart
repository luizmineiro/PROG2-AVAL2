import 'dart:io';

void main() {
 File file = File('sample.json');
 File ofile = File('sample.out');
 final content = file.readAsStringSync();
ofile.createSync();
ofile.writeAsStringSync(content);
 print(content);
}
