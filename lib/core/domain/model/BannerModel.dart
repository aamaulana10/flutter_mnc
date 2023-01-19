class BannerModel {
  List<Data>? data;
  Meta? meta;

  BannerModel({this.data, this.meta});

  BannerModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? title;
  String? titleEn;
  String? description;
  String? descriptionEn;
  String? imageUrl;
  String? imageUrlEn;
  String? link;
  String? type;
  String? productType;
  String? productTypeName;
  String? slugDetail;
  String? position;
  String? domain;
  String? startDate;
  String? endDate;
  int? sequence;
  Null? isShowDescription;
  String? positionDescription;
  String? filename;
  String? filenameEn;
  String? landingLink;
  String? landingLinkEn;
  String? shareLink;
  String? shareText;
  int? createdBy;

  Data(
      {this.id,
        this.title,
        this.titleEn,
        this.description,
        this.descriptionEn,
        this.imageUrl,
        this.imageUrlEn,
        this.link,
        this.type,
        this.productType,
        this.productTypeName,
        this.slugDetail,
        this.position,
        this.domain,
        this.startDate,
        this.endDate,
        this.sequence,
        this.isShowDescription,
        this.positionDescription,
        this.filename,
        this.filenameEn,
        this.landingLink,
        this.landingLinkEn,
        this.shareLink,
        this.shareText,
        this.createdBy});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    titleEn = json['title_en'];
    description = json['description'];
    descriptionEn = json['description_en'];
    imageUrl = json['image_url'];
    imageUrlEn = json['image_url_en'];
    link = json['link'];
    type = json['type'];
    productType = json['product_type'];
    productTypeName = json['product_type_name'];
    slugDetail = json['slug_detail'];
    position = json['position'];
    domain = json['domain'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    sequence = json['sequence'];
    isShowDescription = json['is_show_description'];
    positionDescription = json['position_description'];
    filename = json['filename'];
    filenameEn = json['filename_en'];
    landingLink = json['landing_link'];
    landingLinkEn = json['landing_link_en'];
    shareLink = json['share_link'];
    shareText = json['share_text'];
    createdBy = json['created_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['title_en'] = this.titleEn;
    data['description'] = this.description;
    data['description_en'] = this.descriptionEn;
    data['image_url'] = this.imageUrl;
    data['image_url_en'] = this.imageUrlEn;
    data['link'] = this.link;
    data['type'] = this.type;
    data['product_type'] = this.productType;
    data['product_type_name'] = this.productTypeName;
    data['slug_detail'] = this.slugDetail;
    data['position'] = this.position;
    data['domain'] = this.domain;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['sequence'] = this.sequence;
    data['is_show_description'] = this.isShowDescription;
    data['position_description'] = this.positionDescription;
    data['filename'] = this.filename;
    data['filename_en'] = this.filenameEn;
    data['landing_link'] = this.landingLink;
    data['landing_link_en'] = this.landingLinkEn;
    data['share_link'] = this.shareLink;
    data['share_text'] = this.shareText;
    data['created_by'] = this.createdBy;
    return data;
  }
}

class Meta {
  Pagination? pagination;

  Meta({this.pagination});

  Meta.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    return data;
  }
}

class Pagination {
  int? total;
  int? count;
  int? perPage;
  int? currentPage;
  int? totalPages;
  Links? links;

  Pagination(
      {this.total,
        this.count,
        this.perPage,
        this.currentPage,
        this.totalPages,
        this.links});

  Pagination.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    count = json['count'];
    perPage = json['per_page'];
    currentPage = json['current_page'];
    totalPages = json['total_pages'];
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['count'] = this.count;
    data['per_page'] = this.perPage;
    data['current_page'] = this.currentPage;
    data['total_pages'] = this.totalPages;
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    return data;
  }
}

class Links {
  String? next;

  Links({this.next});

  Links.fromJson(Map<String, dynamic> json) {
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['next'] = this.next;
    return data;
  }
}
