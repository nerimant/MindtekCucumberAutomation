@OMT-7932 @regression
Feature: Validating pizza application functionalities

  Scenario Outline: Validating place order functionality
    Given user navigates to pizza application
    When user creates pizza order with data
      | Pizza        | <Pizza>        |
      | Topping 1    | <Topping 1>     |
      | Topping 2    | <Topping 2>     |
      | Quantity     | <Quantity>      |
      | Name         | <Name>          |
      | Email        | <Email>         |
      | Phone        | <Phone>         |
      | Payment Type | <Payment Type> |
    Then user validates that order is created with success message "Thank you for your order! TOTAL: " " <Pizza>"
    Examples:
      | Pizza                        | Topping 1 | Topping 2    | Quantity | Name        | Email           | Phone      | Payment Type   |
      | Small 6 Slices - no toppings | Mushrooms | Extra cheese | 1        | Patel Harsh | patel@gmail.com | 1234567890 | Credit Card    |
      | Large 10 Slices - 2 toppings | Mushrooms | Extra cheese | 2        | John Doe    | john@gmail.com  | 3234567890 | Cash on Pickup |
      | Medium 8 Slices - 2 toppings | Olives    | Salami       | 3        | Kim Moore   | kim@gmail.com   | 4234567890 | Credit Card    |
    # map<String,Object> map = new HashMap():
  #map.put("Pizza","Small 6 Slices - no toppings"):
  #map.put("Toppings 1",Mushrooms) // KEY AND A VALUE
