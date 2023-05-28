import 'package:dio/dio.dart';

abstract class DataSet<T> {
  final T? data;
  final DioError? error;

  const DataSet({this.data, this.error});
}

class DataSuccess<T> extends DataSet<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataSet<T> {
  const DataFailed(DioError error) : super(error: error);
}
