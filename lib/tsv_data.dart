import 'package:main/delimited_data.dart';

class TsvData extends DelimitedData {
  @override String separator() => '\t';
}
