import 'package:lost_n_found/features/batch/data/models/batch_hive_model.dart';
import 'package:lost_n_found/features/batch/domain/entities/batch_entity.dart';


abstract interface class IbatchDatasource {
  Future<List<BatchEntity>> getAllBAatches();
  Future<BatchHiveModel> getBatchById(String batchId);
  Future<bool> createBatch(BatchHiveModel entity);
  Future<bool> updateBatch(BatchHiveModel entity);
  Future<bool> deleteBatch(String batchld);
}