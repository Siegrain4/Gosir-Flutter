import 'dart:convert';

class UploadModel {
  UploadModel({
   this.success,
});

  String? success;

  factory UploadModel.fromJson(String str) =>
      UploadModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UploadModel.fromMap(Map<String, dynamic> json) => UploadModel(
    success: json["success"],
  );

  Map<String, dynamic> toMap() => {
    "success": success,
  };
}