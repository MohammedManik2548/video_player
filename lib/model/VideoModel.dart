
class VideoModel {
  VideoModel({
      Links? links, 
      num? total, 
      num? page, 
      num? pageSize, 
      List<Results>? results,}){
    _links = links;
    _total = total;
    _page = page;
    _pageSize = pageSize;
    _results = results;
}

  VideoModel.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
    _total = json['total'];
    _page = json['page'];
    _pageSize = json['page_size'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Results.fromJson(v));
      });
    }
  }
  Links? _links;
  num? _total;
  num? _page;
  num? _pageSize;
  List<Results>? _results;
VideoModel copyWith({  Links? links,
  num? total,
  num? page,
  num? pageSize,
  List<Results>? results,
}) => VideoModel(  links: links ?? _links,
  total: total ?? _total,
  page: page ?? _page,
  pageSize: pageSize ?? _pageSize,
  results: results ?? _results,
);
  Links? get links => _links;
  num? get total => _total;
  num? get page => _page;
  num? get pageSize => _pageSize;
  List<Results>? get results => _results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    map['total'] = _total;
    map['page'] = _page;
    map['page_size'] = _pageSize;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Results {
  Results({
      String? thumbnail, 
      num? id, 
      String? title, 
      String? dateAndTime, 
      String? slug, 
      String? createdAt, 
      String? manifest, 
      num? liveStatus, 
      String? liveManifest, 
      bool? isLive, 
      String? channelImage, 
      String? channelName, 
      dynamic channelUsername, 
      bool? isVerified, 
      String? channelSlug, 
      String? channelSubscriber, 
      num? channelId, 
      String? type, 
      String? viewers, 
      String? duration, 
      String? objectType,}){
    _thumbnail = thumbnail;
    _id = id;
    _title = title;
    _dateAndTime = dateAndTime;
    _slug = slug;
    _createdAt = createdAt;
    _manifest = manifest;
    _liveStatus = liveStatus;
    _liveManifest = liveManifest;
    _isLive = isLive;
    _channelImage = channelImage;
    _channelName = channelName;
    _channelUsername = channelUsername;
    _isVerified = isVerified;
    _channelSlug = channelSlug;
    _channelSubscriber = channelSubscriber;
    _channelId = channelId;
    _type = type;
    _viewers = viewers;
    _duration = duration;
    _objectType = objectType;
}

  Results.fromJson(dynamic json) {
    _thumbnail = json['thumbnail'];
    _id = json['id'];
    _title = json['title'];
    _dateAndTime = json['date_and_time'];
    _slug = json['slug'];
    _createdAt = json['created_at'];
    _manifest = json['manifest'];
    _liveStatus = json['live_status'];
    _liveManifest = json['live_manifest'];
    _isLive = json['is_live'];
    _channelImage = json['channel_image'];
    _channelName = json['channel_name'];
    _channelUsername = json['channel_username'];
    _isVerified = json['is_verified'];
    _channelSlug = json['channel_slug'];
    _channelSubscriber = json['channel_subscriber'];
    _channelId = json['channel_id'];
    _type = json['type'];
    _viewers = json['viewers'];
    _duration = json['duration'];
    _objectType = json['object_type'];
  }
  String? _thumbnail;
  num? _id;
  String? _title;
  String? _dateAndTime;
  String? _slug;
  String? _createdAt;
  String? _manifest;
  num? _liveStatus;
  String? _liveManifest;
  bool? _isLive;
  String? _channelImage;
  String? _channelName;
  dynamic _channelUsername;
  bool? _isVerified;
  String? _channelSlug;
  String? _channelSubscriber;
  num? _channelId;
  String? _type;
  String? _viewers;
  String? _duration;
  String? _objectType;
Results copyWith({  String? thumbnail,
  num? id,
  String? title,
  String? dateAndTime,
  String? slug,
  String? createdAt,
  String? manifest,
  num? liveStatus,
  String? liveManifest,
  bool? isLive,
  String? channelImage,
  String? channelName,
  dynamic channelUsername,
  bool? isVerified,
  String? channelSlug,
  String? channelSubscriber,
  num? channelId,
  String? type,
  String? viewers,
  String? duration,
  String? objectType,
}) => Results(  thumbnail: thumbnail ?? _thumbnail,
  id: id ?? _id,
  title: title ?? _title,
  dateAndTime: dateAndTime ?? _dateAndTime,
  slug: slug ?? _slug,
  createdAt: createdAt ?? _createdAt,
  manifest: manifest ?? _manifest,
  liveStatus: liveStatus ?? _liveStatus,
  liveManifest: liveManifest ?? _liveManifest,
  isLive: isLive ?? _isLive,
  channelImage: channelImage ?? _channelImage,
  channelName: channelName ?? _channelName,
  channelUsername: channelUsername ?? _channelUsername,
  isVerified: isVerified ?? _isVerified,
  channelSlug: channelSlug ?? _channelSlug,
  channelSubscriber: channelSubscriber ?? _channelSubscriber,
  channelId: channelId ?? _channelId,
  type: type ?? _type,
  viewers: viewers ?? _viewers,
  duration: duration ?? _duration,
  objectType: objectType ?? _objectType,
);
  String? get thumbnail => _thumbnail;
  num? get id => _id;
  String? get title => _title;
  String? get dateAndTime => _dateAndTime;
  String? get slug => _slug;
  String? get createdAt => _createdAt;
  String? get manifest => _manifest;
  num? get liveStatus => _liveStatus;
  String? get liveManifest => _liveManifest;
  bool? get isLive => _isLive;
  String? get channelImage => _channelImage;
  String? get channelName => _channelName;
  dynamic get channelUsername => _channelUsername;
  bool? get isVerified => _isVerified;
  String? get channelSlug => _channelSlug;
  String? get channelSubscriber => _channelSubscriber;
  num? get channelId => _channelId;
  String? get type => _type;
  String? get viewers => _viewers;
  String? get duration => _duration;
  String? get objectType => _objectType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['thumbnail'] = _thumbnail;
    map['id'] = _id;
    map['title'] = _title;
    map['date_and_time'] = _dateAndTime;
    map['slug'] = _slug;
    map['created_at'] = _createdAt;
    map['manifest'] = _manifest;
    map['live_status'] = _liveStatus;
    map['live_manifest'] = _liveManifest;
    map['is_live'] = _isLive;
    map['channel_image'] = _channelImage;
    map['channel_name'] = _channelName;
    map['channel_username'] = _channelUsername;
    map['is_verified'] = _isVerified;
    map['channel_slug'] = _channelSlug;
    map['channel_subscriber'] = _channelSubscriber;
    map['channel_id'] = _channelId;
    map['type'] = _type;
    map['viewers'] = _viewers;
    map['duration'] = _duration;
    map['object_type'] = _objectType;
    return map;
  }

}

class Links {
  Links({
      num? next, 
      dynamic previous,}){
    _next = next;
    _previous = previous;
}

  Links.fromJson(dynamic json) {
    _next = json['next'];
    _previous = json['previous'];
  }
  num? _next;
  dynamic _previous;
Links copyWith({  num? next,
  dynamic previous,
}) => Links(  next: next ?? _next,
  previous: previous ?? _previous,
);
  num? get next => _next;
  dynamic get previous => _previous;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['next'] = _next;
    map['previous'] = _previous;
    return map;
  }

}