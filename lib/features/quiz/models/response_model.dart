import 'dart:convert';

class ResponseModel {
  final String? text;
  final int? score;

  ResponseModel({
    this.text,
    this.score,
  });

  factory ResponseModel.fromMap(Map<String, dynamic> map) {
    return ResponseModel(
      text: map['text'],
      score: map['score'],
    );
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map['text'] = text;
    map['score'] = score;
    return map;
  }

  factory ResponseModel.fromJson(String source) {
    return ResponseModel.fromMap(jsonDecode(source));
  }

  String toJson() => jsonEncode(toMap());
}
