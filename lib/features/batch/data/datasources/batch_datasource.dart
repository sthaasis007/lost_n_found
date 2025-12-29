import 'package:lost_n_found/features/batch/data/models/batch_hive_model.dart';
import 'package:lost_n_found/features/batch/domain/entities/batch_entity.dart';


abstract interface class IbatchDatasource {
  Future<List<BatchEntity>> getAllBatches();
  Future<BatchHiveModel> getBatchById(String batchId);
  Future<bool> createBatch(BatchHiveModel model);
  Future<bool> updateBatch(BatchHiveModel model);
  Future<bool> deleteBatch(String batchld);
}