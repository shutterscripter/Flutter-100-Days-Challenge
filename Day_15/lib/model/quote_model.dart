class QuoteModel {
  String? id;
  String? author;
  String? en;

  QuoteModel({this.id, this.author, this.en});

  QuoteModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    author = json['author'];
    en = json['en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['author'] = author;
    data['en'] = en;
    return data;
  }
}