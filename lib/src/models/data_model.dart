import 'package:isar/isar.dart';

import '../config/utils/helper.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

@collection
@JsonSerializable()
class DataModel {
  int? id;
  Id get isarid => hashId(id.toString());
  String? date;
  String? name;
  String? category;
  String? location;

  DataModel({this.date, this.name, this.category, this.location});
  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
