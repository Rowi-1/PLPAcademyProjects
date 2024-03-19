def calculate_discount(price, discount_percent):
    if discount_percent >= 20:
        discount_amount = price * (discount_percent / 100)
        final_price = price - discount_amount
        return final_price
    else:
        return price

# Prompting the user for input
original_price = float(input("Enter the original price of the item: "))
discount_percent = float(input("Enter the discount percentage: "))

# Calculating the final price using the calculate_discount function
final_price = calculate_discount(original_price, discount_percent)

# Printing the final price after applying the discount, or the original price if no discount was applied
if final_price == original_price:
    print("No discount applied. Original price:", final_price)
else:
    print("Final price after applying the discount:", final_price)
