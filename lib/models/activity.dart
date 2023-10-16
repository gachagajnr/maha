import 'package:mahalikenya/models/uploaded_image.dart';


class Activity {
  late String? id;
  late String company;
  late String? creatorId = '';
  late String name;
  late String location;
  late String description;
  late String coordinates;
  late String requirements;
  late String duration;
  late bool? isOpen24Hrs;
  late String tips;
  late String type;
  late bool? isLiked;
  late bool? isBucket;
  late bool? isPublished;
  late bool? isPopular;
  late bool? isSaved;
  late String? likedId;
  late String? bucketId;
  late String? companyPhone;
  late String? parentCompany;
  late String? by;
  late String? savedId = '';
  late List<dynamic> participants;
  late String tag;
  late List<dynamic> prices;
  late List<UploadedImage>? images;

  Activity({
    this.id,
    this.likedId,
    this.bucketId,
    this.savedId,
    this.isLiked,
    this.isBucket,
    this.isSaved,
    this.isPopular,
    this.companyPhone,
    this.by,
    this.creatorId,
    this.parentCompany,
    this.isPublished,
    this.images,
    this.isOpen24Hrs,
    required this.company,
    required this.name,
    required this.location,
    required this.description,
    required this.duration,
    required this.coordinates,
    required this.requirements,
    required this.tag,
    required this.tips,
    required this.type,
    required this.participants,
    required this.prices,

    // required this.images
  });

  factory Activity.fromMap(Map<String, dynamic> map) {
    return Activity(
      id: map['id'].toString(),
      company: map['company'].toString(),
      name: map['name'].toString(),
      location: map['location'].toString(),
      description: map['description'].toString(),
      duration: map['duration'].toString(),
      coordinates: map['coordinates'].toString(),
      type: map['type'].toString(),
      bucketId: map['bucket']['bucketId'].toString(),
      creatorId: map['creatorId'].toString(),
      requirements: map['requirements'].toString(),
      tips: map['tips'].toString(),
      parentCompany: map['parentCompany'].toString(),
      isLiked: map['like']['isLiked'],
      isPopular: map['isPopular'],
      isOpen24Hrs: map['isOpen24hrs'],
      isSaved: map['save']['isSaved'],
      isBucket: map['bucket']['isBucket'],
      companyPhone: map['companyPhone'],
      isPublished: map['isPublished'],
      likedId: map['like']['likedId'].toString(),
      savedId: map['save']['savedId'].toString(),
      participants: map['participants'].toList(),
      tag: map['tag'].toString(),
      prices: map['prices'].toList(),
      images: (map['images']['data'] as List<dynamic>)
          .map((socialData) => UploadedImage.fromMap(socialData))
          .toList(),
    );
  }

  @override
  String toString() => '"id":$id "company":$company "isPopular":$isPopular '
      ' "creatorId":$creatorId "parentCompany":$parentCompany '
      '"isPublished":$isPublished "name":$name "type":$type '
      '"location":$location  "description":$description'
      ' "isOpen24Hrs":$isOpen24Hrs "duration":$duration "isLiked":$isLiked "savedId":$savedId '
      '"likedId":$likedId "coordinates":$coordinates '
      '"companyPhone":$companyPhone "requirements":$requirements '
      '"tips":$tips "participants":$participants "images":$images "prices":$prices' ;
}
