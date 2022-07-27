import 'package:facul/delimited_data.dart';

class TsvData extends DelimitedData {
  @override String separator() => '\t';
}
