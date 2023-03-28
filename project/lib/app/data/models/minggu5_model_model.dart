// class Minggu5Model {
//   String? status;
//   int? totalResults;
//   List<Articles>? articles;

//   Minggu5Model({this.status, this.totalResults, this.articles});

//   factory Minggu5Model.fromJson(Map<String, dynamic> json) => Minggu5Model(
//         status: json['status'],
//         totalResults: json['totalResults'],
//         articles: List<Articles>.from((json["articles"] as List)
//             .map((x) => Articles.fromJson(x))
//             .where((article) =>
//                 article.author != null &&
//                 article.urlToImage != null &&
//                 article.publishedAt != null &&
//                 article.content != null)),
//       );

//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data['status'] = status;
//     data['totalResults'] = totalResults;
//     if (articles != null) {
//       data['articles'] = articles?.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Articles {
//   Source? source;
//   String? author;
//   String? title;
//   dynamic description;
//   String? url;
//   dynamic urlToImage;
//   String? publishedAt;
//   dynamic content;

//   Articles(
//       {this.source,
//       this.author,
//       this.title,
//       this.description,
//       this.url,
//       this.urlToImage,
//       this.publishedAt,
//       this.content});

//   Articles.fromJson(Map<String, dynamic> json) {
//     source = json['source'] != null ? Source?.fromJson(json['source']) : null;
//     author = json['author'];
//     title = json['title'];
//     description = json['description'];
//     url = json['url'];
//     urlToImage = json['urlToImage'];
//     publishedAt = json['publishedAt'];
//     content = json['content'];
//   }

//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     if (source != null) {
//       data['source'] = source?.toJson();
//     }
//     data['author'] = author;
//     data['title'] = title;
//     data['description'] = description;
//     data['url'] = url;
//     data['urlToImage'] = urlToImage;
//     data['publishedAt'] = publishedAt;
//     data['content'] = content;
//     return data;
//   }
// }

// class Source {
//   String? id;
//   String? name;

//   Source({this.id, this.name});

//   Source.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data['id'] = id;
//     data['name'] = name;
//     return data;
//   }
// }

// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  String status;
  int totalResults;
  List<Article> articles;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        status: json['status'],
        totalResults: json['totalResults'],
        // articles: List<Article>.from((json["articles"] as List)
        //     .map((x) => Article.fromJson(x))
        //     .where((article) =>
        //         article.author != null &&
        //         article.urlToImage != null &&
        //         article.publishedAt != null &&
        //         article.content != null)),

        articles: List<Article>.from(
            json["articles"].map((x) => Article.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
      };
}

class Article {
  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  Source source;
  String author;
  String title;
  dynamic description;
  String url;
  dynamic urlToImage;
  DateTime publishedAt;
  dynamic content;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: Source.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "source": source.toJson(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt.toIso8601String(),
        "content": content,
      };
}

class Source {
  Source({
    required this.id,
    required this.name,
  });

  Id id;
  Name name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: idValues.map[json["id"]]!,
        name: nameValues.map[json["name"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": idValues.reverse[id],
        "name": nameValues.reverse[name],
      };
}

enum Id { GOOGLE_NEWS }

final idValues = EnumValues({"google-news": Id.GOOGLE_NEWS});

enum Name { GOOGLE_NEWS }

final nameValues = EnumValues({"Google News": Name.GOOGLE_NEWS});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
