import 'package:hive_flutter/hive_flutter.dart';
import 'package:lost_n_found/core/constants/hive_table_constants.dart';
import 'package:lost_n_found/features/batch/data/models/batch_hive_model.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {

  Future<void> init() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = '${directory.path}/${HiveTableConstants.dbName}';
    Hive.init(path);  
    _registerAdapter();
  }

  void _registerAdapter() {
    if (!Hive.isAdapterRegistered(HiveTableConstants.batchTypeId)) {
      Hive.registerAdapter(BatchHiveModelAdapter());
    }
  }

  Future<void> openBoxes() async{
    await Hive.openBox<BatchHiveModel>(HiveTableConstants.batchTable);
  }

  Future<void> close() async{
    await Hive.close();
  }

  Box<BatchHiveModel> get _batchBox =>
    Hive.box<BatchHiveModel>(HiveTableConstants.batchTable);

  Future<BatchHiveModel> createBatch(BatchHiveModel model) async {
    await _batchBox.put(model.batchId, model);
    return model;
  }

  List<BatchHiveModel> getAllBatches(){
    return _batchBox.values.toList();
  }

  Future<void> updateBatch(BatchHiveModel model) async {
    await _batchBox.put(model.batchId, model);
  }


}