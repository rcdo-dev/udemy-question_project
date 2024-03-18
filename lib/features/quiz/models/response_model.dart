import 'dart:convert';

class ResponseModel {
  String text;

  ResponseModel({
    required this.text,
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
