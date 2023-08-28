class modelnews {
  String? author, title, description, url, publishat, content;
  modelnews.fromjson({required Map<String, dynamic> json}) {
    author = json["author"];
    title = json["title"];
    description = json["description"];

    url = json["urlToImage"];

    publishat = json["publishedAt"];

    content = json["content"];
  }
}
