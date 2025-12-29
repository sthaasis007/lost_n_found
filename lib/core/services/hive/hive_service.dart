
import 'package:lost_n_found/core/constants/hive_table_constants.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {

  Future<void> init() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = '${directory.path}/${HiveTableConstants.dbName}';
  }

}