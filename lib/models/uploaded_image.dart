class UploadedImage {
  late String? id;
  late String? activityId;
  late String? imageId;

  UploadedImage({
    this.id,
    this.activityId,
    this.imageId,
  });

  factory UploadedImage.fromMap(Map<String, dynamic> map) {
    return UploadedImage(
      id: map['id'].toString(),
      activityId: map['activityId'].toString(),
      imageId: map['imageId'].toString(),
    );
  }

  @override
  String toString() => '"id":$id "imageId":$imageId "activityId":$activityId';
}
