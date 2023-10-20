import 'package:json_annotation/json_annotation.dart';
import 'package:intl/intl.dart';

part 'model.g.dart';
//TODO: flutter pub run build_runner build
// ne pas oublier les dépendances (autant dev que non)

@JsonSerializable()
class SResponse {
  SResponse(this.a, this.b, this.c);

  int a = 0;
  String b = '';
  String c = '';


  factory SResponse.fromJson(Map<String, dynamic> json) => _$SResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SResponseToJson(this);
}