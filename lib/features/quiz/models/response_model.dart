import 'dart:convert';

class ResponseModel {
  final String? text;

  ResponseModel({
    this.text,
  });

  factory ResponseModel.fromMap(Map<String, dynamic> map) {
    return ResponseModel(
      text: map['text'],
    );
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map['text'] = text;
    return map;
  }

  factory ResponseModel.fromJson(String source) {
    return ResponseModel.fromMap(jsonDecode(source));
  }

  String toJson() => jsonEncode(toMap());
}
