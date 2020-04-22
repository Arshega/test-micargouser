class BookingList{
  final String bookingStatus;
  final String bookingID;
  final String bookingCargoDetails;
  final String bookingFromAddress;
  final String bookingToAddress;

  BookingList({this.bookingStatus, this.bookingID, this.bookingCargoDetails, this.bookingFromAddress, this.bookingToAddress});

  static List<BookingList> listBookings(){
    var listOfBookings = new List<BookingList>();
    listOfBookings.add(new BookingList(bookingStatus: "FOR DISPATCH", bookingID: "CSS2DXK7CPRV",  bookingCargoDetails: "10 DC - 1000.00 KG", bookingFromAddress: "FROM: TABUELAN, TABUELAN, CEBU, BOGO EMERALD ST. PHILIPPINES 6000", bookingToAddress: "FROM: TABUELAN, TABUELAN, CEBU, BOGO EMERALD ST. PHILIPPINES 6000"));
    listOfBookings.add(new BookingList(bookingStatus: "FOR DISPATCH", bookingID: "H005FIK7A3J8",  bookingCargoDetails: "10 DC - 1.00 KG", bookingFromAddress: "FROM: TABUELAN, TABUELAN, CEBU, BOGO EMERALD ST. PHILIPPINES 6000", bookingToAddress: "FROM: TABUELAN, TABUELAN, CEBU, BOGO EMERALD ST. PHILIPPINES 6000"));
    listOfBookings.add(new BookingList(bookingStatus: "FOR DISPATCH", bookingID: "ZUXKBGI1KPCZ",  bookingCargoDetails: "20 DC - 1.00 KG", bookingFromAddress: "FROM: TABUELAN, TABUELAN, CEBU, BOGO EMERALD ST. PHILIPPINES 6000", bookingToAddress: "FROM: TABUELAN, TABUELAN, CEBU, BOGO EMERALD ST. PHILIPPINES 6000"));
    listOfBookings.add(new BookingList(bookingStatus: "FOR DISPATCH", bookingID: "BSVX15M7OBA5",  bookingCargoDetails: "20 DC - 40.00 KG", bookingFromAddress: "FROM: TABUELAN, TABUELAN, CEBU, BOGO EMERALD ST. PHILIPPINES 6000", bookingToAddress: "FROM: TABUELAN, TABUELAN, CEBU, BOGO EMERALD ST. PHILIPPINES 6000"));
    listOfBookings.add(new BookingList(bookingStatus: "FOR DISPATCH", bookingID: "W1QYBHEBQWDZ",  bookingCargoDetails: "100 DC - 90.00 KG", bookingFromAddress: "FROM: TABUELAN, TABUELAN, CEBU, BOGO EMERALD ST. PHILIPPINES 6000", bookingToAddress: "FROM: TABUELAN, TABUELAN, CEBU, BOGO EMERALD ST. PHILIPPINES 6000"));
    return listOfBookings;
  }
}