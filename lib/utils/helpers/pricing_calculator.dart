class TPricingCalculator {
  // -- Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate =  getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }


  // -- Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // -- Calculate tax amount
  static String calculateTax(double productPrice, String location) {
    double taxRate =  getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  // -- Get tax rate for location
  static double getTaxRateForLocation (String location) {
    // Lookup the rate rate for the given location from a tax rate database or API
    //return the appropriate tax rate
    return 0.10;
  }

  // -- Get shipping cost
  static double getShippingCost(String location) {
    // Lookup the shipping cost for the given location from a shipping database or API
    //return the appropriate shipping cost
    return 5.00;
  }

  // static double calculateCartTotal( CartModel cart) {
  //   return cart.items.map((e)=> e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}