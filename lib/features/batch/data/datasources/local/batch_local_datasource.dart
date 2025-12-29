import 'package:lost_n_found/features/batch/data/datasources/batch_datasource.dart';
import 'package:lost_n_found/features/batch/data/models/batch_hive_model.dart';
import 'package:lost_n_found/features/batch/domain/entities/batch_entity.dart';

class BatchLocalDatasource implements IbatchDatasource {
  @override
  Future<bool> createBatch(BatchHiveModel entity) {
    // TODO: implement createBatch
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteBatch(String batchld) {
    // TODO: implement deleteBatch
    throw UnimplementedError();
  }

  @override
  Future<List<BatchEntity>> getAllBAatches() {
    // TODO: implement getAllBAatches
    throw UnimplementedError();
  }

  @override
  Future<BatchHiveModel> getBatchById(String batchId) {
    // TODO: implement getBatchById
    throw UnimplementedError();
  }

  @override
  Future<bool> updateBatch(BatchHiveModel entity) {
    // TODO: implement updateBatch
    throw UnimplementedError();
  }
}