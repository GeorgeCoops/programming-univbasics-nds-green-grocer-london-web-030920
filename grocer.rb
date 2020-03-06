require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
item_index = 0
while item_index < collection.length
if name == collection[item_index][:item]
  return collection[item_index]
else
item_index += 1
end
end
end

def consolidate_cart(cart)
  new_cart = []
  item_index = 0

    while item_index < cart.length
      name = cart[item_index][:item]
      sought_item = find_item_by_name_in_collection(name, new_cart)
      if sought_item
        sought_item[:count] += 1
      else

        cart[item_index][:count] = 1
        new_cart.push(cart[item_index])
      end
        item_index += 1
      end
    new_cart
end




def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
coupon_index = 0

if coupons.length > 0

while coupon_index < coupons.length
  coupon_item_name = coupons[coupon_index][:item]
  coupon = coupons[coupon_index]

  cart_item = find_item_by_name_in_collection(coupon_item_name, cart)
  if cart_item && coupons[coupon_index][:num] <= cart_item[:count]
  new_coupon = {:item => "#{coupon_item_name} W/COUPON", :price => coupon[:cost]/coupon[:num], :clearance => cart_item[:clearance], :count => coupon[:num]}
#binding.pry
  cart.push(new_coupon)
  cart_item[:count] -= coupon[:num]
  end
  coupon_index += 1
end

else
  return cart
end

cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
counter = 0
while counter < cart.item_index
  if cart[counter][:clearance]
    cart[counter][:price] = (cart[counter][:price] - (cart[counter][:price]*0.20)).round(2)
  end
  item_index += 1
end
cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
