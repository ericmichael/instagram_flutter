class Post{
    // property :id, Serial
    // #fill in the rest
    // property :caption, Text
    // property :image_url, Text
    // property :created_at, DateTime
    // property :user_id, Integer
    int id;
    String caption;
    String image_url;
    DateTime created_at;
    int user_id;
    int likes_count;
    int comments_count;

    Post({this.id, this.caption, this.image_url, this.created_at, this.user_id, this.likes_count, this.comments_count});

    factory Post.fromJson(Map<String, dynamic> json){
      return Post(id: json["id"], caption: json["caption"], image_url: json["image_url"], created_at: DateTime.parse(json["created_at"]), user_id: json["user_id"], likes_count: json["likes_count"], comments_count: json["comments_count"]);
    }
}