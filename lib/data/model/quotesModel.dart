class QuotesModel {
  String? quote;
  String? author;
  List<String>? tags;
  double? popularity;
  String? category;

  QuotesModel(
      {this.quote, this.author, this.tags, this.popularity, this.category});

  QuotesModel.fromJson(Map<String, dynamic> json) {
    quote = json['Quote'];
    author = json['Author'];
    tags = json['Tags'].cast<String>();
    popularity = json['Popularity'];
    category = json['Category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Quote'] = this.quote;
    data['Author'] = this.author;
    data['Tags'] = this.tags;
    data['Popularity'] = this.popularity;
    data['Category'] = this.category;
    return data;
  }
}
