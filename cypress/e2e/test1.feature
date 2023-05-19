Feature: The Great Courses User Flow - Mathematics
Background:
Given I visit "https://www.thegreatcourses.com/"
Scenario: Complete user flow for a Mathematics book on sale
When I click on the Browse button
And I click on the Mathematics category
Then I locate the books on sale
And I click on the first book on sale
And I click on the DVD option
Then I intercept the request to the "https://store.thegreatcourses.com/graphql/mutation/saveCartItem" API (clicking add to cart button in the next step will trigger this API call, you will start listening before clicking)
And I click on the Add to Cart button
Then I wait for the API intercept call and print the grand_total when the response is received
Then I validate the text "Instant video added to your cart" appears on the page
And I click on the View Cart button
Then I validate the book is in the cart by its name
And I click on the Checkout Now button
When I enter a fake email address and fake password
And I click on the Continue button
Then I validate the error message "We can't find an account with that email address" appears
Given I navigate back to the previous page
When I click on the Remove button to remove the book from the cart
And I move the mouse to the Cart icon in the top right corner
Then I validate the text "Your Cart is Empty" appears right under the Cart icon
