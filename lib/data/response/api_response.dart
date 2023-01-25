import 'package:mvvm_practise/data/response/status.dart';

class ApiRespone<T> {
  Status? status;
  T? data;
  String? message;
  ApiRespone(
    this.status,
    this.data,
    this.message,
  );
  ApiRespone.loading() : status = Status.LOADING;
  ApiRespone.completed() : status = Status.COMPLETED;
  ApiRespone.error() : status = Status.ERROR;

  @override
  String toString() {
    return "Status : $status, \n Message: $message,\n Data: $data";
  }
}
