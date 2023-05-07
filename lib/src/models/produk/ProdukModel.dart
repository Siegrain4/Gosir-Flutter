import 'dart:convert';

Produk produkModelFromJson(String str) =>
    Produk.fromJson(json.decode(str));

String produkModelToJson(Produk data) => json.encode(data.toJson());

class Produk {
  int? code;
  String? message;
  List<ProdukData>? data;

  Produk({this.code, this.message, this.data});

  Produk.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <ProdukData>[];
      json['data'].forEach((v) {
        data!.add(new ProdukData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProdukData {
  int? id;
  String? userId;
  String? namaProduk;
  String? deskripsi;
  String? stok;
  String? harga;
  String? image;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  Users? users;

  ProdukData(
      {this.id,
        this.userId,
        this.namaProduk,
        this.deskripsi,
        this.stok,
        this.harga,
        this.image,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.users});

  ProdukData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    namaProduk = json['nama_produk'];
    deskripsi = json['deskripsi'];
    stok = json['stok'];
    harga = json['harga'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    users = json['users'] != null ? new Users.fromJson(json['users']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['nama_produk'] = this.namaProduk;
    data['deskripsi'] = this.deskripsi;
    data['stok'] = this.stok;
    data['harga'] = this.harga;
    data['image'] = this.image;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    if (this.users != null) {
      data['users'] = this.users!.toJson();
    }
    return data;
  }
}

class Users {
  int? id;
  String? name;
  String? storeName;
  String? email;
  Null? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;

  Users(
      {this.id,
        this.name,
        this.storeName,
        this.email,
        this.emailVerifiedAt,
        this.createdAt,
        this.updatedAt});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    storeName = json['store_name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['store_name'] = this.storeName;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}