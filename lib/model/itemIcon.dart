class   ItemIcon {
 late String imageUrl;
 late String title;
  ItemIcon({ required  this.imageUrl, required this.title});
  ItemIcon.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['title'] = this.title;
    return data;
  }
}