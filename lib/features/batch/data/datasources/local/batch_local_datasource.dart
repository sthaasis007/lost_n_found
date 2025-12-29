import 'package:lost_n_found/core/services/hive/hive_service.dart';
import 'package:lost_n_found/features/batch/data/datasources/batch_datasource.dart';
import 'package:lost_n_found/features/batch/data/models/batch_hive_model.dart';
import 'package:lost_n_found/features/batch/domain/entities/batch_entity.dart';

class BatchLocalDatasource implements IbatchDatasource{
  final HiveService _hiveService;

  BatchLocalDatasource({required HiveService hiveService})
    : _hiveService = hiveService;

  
  @override
  Future<bool> createBatch(BatchHiveModel entity) async {
    try{
      await _hiveService.createBatch(entity);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> deleteBatch(String batchld) {
    // TODO: implement deleteBatch
    throw UnimplementedError();
  }

  @override
  Future<List<BatchEntity>> getAllBatches() async{
    try{
      final models = _hiveService.getAllBatches();
      return BatchHiveModel.toEntityList(models);
    } catch (e) 
    {
      return [];
    }
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