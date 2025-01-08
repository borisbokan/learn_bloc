class Review {
  Review({
    this.id,
    this.review,
    this.rating,
    this.fromUserId,
    this.fromUserName,
    this.toUserId,
    this.reviewType,
    this.created,
    this.like,
    this.arrangementId,
    this.jobType,
    this.jobSubtype,
  });

  String? id;
  String? review;
  int? rating;
  String? fromUserId;
  String? fromUserName;
  String? toUserId;
  Like? like;
  ReviewType? reviewType;
  int? created;
  String? arrangementId;
  String? jobType;
  String? jobSubtype;

  factory Review.fromJson(Map<String, dynamic>? json) {
    return Review(
      id: json!['id'],
      review: json['review'],
      rating: json['rating'] as int,
      fromUserId: json['fromUserId'],
      fromUserName: json['fromUserName'],
      toUserId: json['toUserId'],
      like: json['like'],
      reviewType: ReviewType.values.byName(json['reviewType']),
      created: json['created'],
      arrangementId: json['arrangementId'],
      jobType: json['jobType'],
      jobSubtype: json['jobSubtype'],
    );
  }

  Map<String, dynamic>? toJson() {
    return {
      "id": id,
      "review": review,
      "rating": rating,
      "fromUserId": fromUserId,
      "fromUserName": fromUserName,
      "toUserId": toUserId,
      "reviewType": reviewType?.name,
      "created": created,
      "like": like,
      "arrangementId": arrangementId,
      "jobType": jobType,
      "jobSubtype": jobSubtype,
    };
  }
}

enum ReviewType { OFFER, REQUEST }

enum Like { POSITIVE, NEGATIVE }
