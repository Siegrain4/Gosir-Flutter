import 'dart:convert';

Transaksi transaksiModelFromJson(String str) =>
    Transaksi.fromJson(json.decode(str));

String transaksiModelToJson(Transaksi data) => json.encode(data.toJson());

class Transaksi {
  int? code;
  String? message;
  List<TransaksiData>? data;

  Transaksi({this.code, this.message, this.data});

  Transaksi.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <TransaksiData>[];
      json['data'].forEach((v) {
        data!.add(new TransaksiData.fromJson(v));
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

class TransaksiData {
  int? id;
  String? userId;
  String? productId;
  int? qty;
  int? harga;
  int? subtotal;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  Users? users;
  ProdukTransaksi? produk;

  TransaksiData(
      {this.id,
        this.userId,
        this.productId,
        this.qty,
        this.harga,
        this.subtotal,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.users,
        this.produk});

  TransaksiData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    productId = json['product_id'];
    qty = json['qty'];
    harga = json['harga'];
    subtotal = json['subtotal'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    users = json['users'] != null ? new Users.fromJson(json['users']) : null;
    produk =
    json['produk'] != null ? new ProdukTransaksi.fromJson(json['produk']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['product_id'] = this.productId;
    data['qty'] = this.qty;
    data['harga'] = this.harga;
    data['subtotal'] = this.subtotal;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    if (this.users != null) {
      data['users'] = this.users!.toJson();
    }
    if (this.produk != null) {
      data['produk'] = this.produk!.toJson();
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

class ProdukTransaksi {
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

  ProdukTransaksi(
      {this.id,
        this.userId,
        this.namaProduk,
        this.deskripsi,
        this.stok,
        this.harga,
        this.image,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  ProdukTransaksi.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}