class SubVenue {
  final String nameOfSubVenue;
  final int capacityOfSubVenue;
  final List<AvailableDate> availableDates;
  final List<MenuOption> menuOptions;
  final List<DecorOption> decorOptions;
  final List<BookingCharge> bookingCharges;

  SubVenue({
    required this.nameOfSubVenue,
    required this.capacityOfSubVenue,
    required this.availableDates,
    required this.menuOptions,
    required this.decorOptions,
    required this.bookingCharges,
  });

  factory SubVenue.empty() {
    return SubVenue(
      nameOfSubVenue: '',
      capacityOfSubVenue: 0,
      availableDates: [],
      menuOptions: [],
      decorOptions: [],
      bookingCharges: [],
    );
  }

  get pricePerPerson => null;
}

class AvailableDate {
  final DateTime date;
  final String startTime;
  final String endTime;

  AvailableDate({
    required this.date,
    required this.startTime,
    required this.endTime,
  });
}

class MenuOption {
  final String packageName;
  final String packageDescription;
  final List<PackageItem> packageItems;
  final int packagePrice;

  MenuOption({
    required this.packageName,
    required this.packageDescription,
    required this.packageItems,
    required this.packagePrice,
  });
}

class PackageItem {
  final String itemCategoryName;
  final List<ItemOption> itemOptions;

  PackageItem({
    required this.itemCategoryName,
    required this.itemOptions,
  });
}

class ItemOption {
  final String itemName;

  ItemOption({
    required this.itemName,
  });
}

class DecorOption {
  final String decorName;
  final String forEventType;
  final int decorPrice;

  DecorOption({
    required this.decorName,
    required this.forEventType,
    required this.decorPrice,
  });
}

class BookingCharge {
  final String bookingChargeName;
  final int bookingChargePrice;

  BookingCharge({
    required this.bookingChargeName,
    required this.bookingChargePrice,
  });
}

class Review {
  final String nameOfVenue;
  final double totalScore;
  final String reviewRating;
  final int stars;
  final String sentiment;
  final String text;

  Review({
    required this.nameOfVenue,
    required this.totalScore,
    required this.reviewRating,
    required this.stars,
    required this.sentiment,
    required this.text,
  });
}

class ImageUrl {
  final String nameOfVenue;
  final String link1;
  final String? link2;
  final String? link3;
  final String? link4;
  final String? link5;

  List<String> toImageList() {
    return [link1, link2, link3, link4, link5]
        .where((link) => link != null)
        .cast<String>()
        .toList();
  }

  ImageUrl({
    required this.nameOfVenue,
    required this.link1,
    this.link2,
    this.link3,
    this.link4,
    this.link5,
  });
}

class BookingInfo {
  final SubVenue subVenueID;
  final MenuOption menuOptionID;
  final DecorOption decorOptionID;
  final BookingCharge bookingChargeID;
  final AvailableDate availableDateID;

  BookingInfo({
    required this.subVenueID,
    required this.menuOptionID,
    required this.decorOptionID,
    required this.bookingChargeID,
    required this.availableDateID,
  });

  get totalAmount => null;

  get status => null;
}

class Venue {
  final String timestamp;
  final String ranking;
  final String nameOfVenue;
  final String locationOfVenue;
  final String plusCode;
  final List<String> typeOfVenue;
  final String numberOfReviews;
  final List<String> serviceOptions;
  final List<String> accessabilityOptions;
  final String rating;
  final String parkingSpace;
  final String numberOfSubhalls;
  final String city;
  final String totalHallsCapacity;
  final List<String> refundPolicy;
  final String contactNumber;
  final String? websiteLink;
  final int pricePerPerson;
  final String? description;
  final bool arEnabled;
  final bool paranomaEnabled;
  final bool verifiedStatus;
  final List<ImageUrl> images;
  final bool wifi;
  final int wifiCost;
  final List<SubVenue> subVenues;
  final List<Review> reviews;
  final BookingInfo? bookingInfo;

  Venue({
    required this.timestamp,
    required this.ranking,
    required this.nameOfVenue,
    required this.locationOfVenue,
    required this.plusCode,
    required this.typeOfVenue,
    required this.numberOfReviews,
    required this.serviceOptions,
    required this.accessabilityOptions,
    required this.rating,
    required this.parkingSpace,
    required this.numberOfSubhalls,
    required this.city,
    required this.totalHallsCapacity,
    required this.refundPolicy,
    required this.contactNumber,
    required this.websiteLink,
    required this.pricePerPerson,
    required this.description,
    required this.arEnabled,
    required this.paranomaEnabled,
    required this.verifiedStatus,
    required this.images,
    required this.wifi,
    required this.wifiCost,
    required this.subVenues,
    required this.reviews,
    this.bookingInfo,
  });

  factory Venue.empty() {
    return Venue(
      timestamp: '',
      ranking: '',
      nameOfVenue: '',
      locationOfVenue: '',
      plusCode: '',
      typeOfVenue: [],
      numberOfReviews: '',
      serviceOptions: [],
      accessabilityOptions: [],
      rating: '',
      parkingSpace: '',
      numberOfSubhalls: '',
      city: '',
      totalHallsCapacity: '',
      refundPolicy: [],
      contactNumber: '',
      websiteLink: '',
      pricePerPerson: 0,
      description: '',
      arEnabled: false,
      paranomaEnabled: false,
      verifiedStatus: false,
      images: [],
      wifi: false,
      wifiCost: 0,
      subVenues: [],
      reviews: [],
      bookingInfo: null,
    );
  }

  get decorOptions => null;

  get bookingCharges => null;
}

class VenueModel {
  final List<Venue> venues;

  VenueModel({
    required this.venues,
  });
}
