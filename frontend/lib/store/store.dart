import '../models/venue_model.dart'; // Import the models.dart file
import '../services/mobile_API.dart'; // Import your api.dart file

class AppDataStore {
  static List<Venue> dataList = [];
  static Venue? currentVenue;
  static List<Venue> filteredVenues = [];

  static Future<void> fetchDataAtAppLaunch() async {
    try {
      final jsonData = await fetchData();

      dataList = jsonData;
    } catch (e, stackTrace) {
      // Handle exceptions
      print('Exception: $e');
      //i want more details on the exception
      print('Exception: ${e.toString()}');
      //show me where this exception is coming from
      print('Exception: $stackTrace');
      print('Exception: ${stackTrace.toString()}');
    }
  }

  static void selectVenue(int index) {
    currentVenue = dataList.isNotEmpty ? dataList[index] : null;
    // You can perform additional actions when a venue is selected, such as fetching secondary information.
  }

  static void selectVenueByName(String venueName) {
    // Trim whitespace from the input venueName
    venueName = venueName.trim();

    // Check if venueName is empty
    if (venueName.isEmpty) {
      print('Venue name is empty');
      return;
    }

    // Debugging: Print the values during the search process
    print('Searching for: $venueName');

    // Search for the venue in dataList
    final venue = dataList.firstWhere(
      (venue) => venue.nameOfVenue.trim() == venueName,
      orElse: () => Venue(
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
      ),
    );

    // Check if the venue was found
    if (venue.nameOfVenue.isNotEmpty) {
      currentVenue = venue;
      print('Current Venue: ${currentVenue?.nameOfVenue}');
    } else {
      print('Venue not found');
    }
  }

  static void filterVenues(
    String selectedRating,
    String selectedTypeOfVenue,
    String selectedCity,
    int selectedPricePerPerson,
    String selectedAccessibilityOptions,
    int selectedCapacity,
    String selectedRefundPolicy,
  ) {
    fetchFilteredData(
      selectedRating,
      selectedTypeOfVenue,
      selectedCity,
      selectedPricePerPerson,
      selectedAccessibilityOptions,
      selectedCapacity,
      selectedRefundPolicy,
    ).then((venueNames) {
      // Map venue names to venue objects
      List<Venue> venues = dataList.where((venue) {
        return venueNames.contains(venue.nameOfVenue);
      }).toList();

      // Add the mapped venues to filteredVenues
      filteredVenues.addAll(venues);
    }).catchError((error) {
      print('Failed to fetch filtered data: $error');
      // Handle error
    });
  }
}
