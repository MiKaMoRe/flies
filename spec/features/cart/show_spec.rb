# # frozen_string_literal: true

# require 'rails_helper'

# feature 'User can check added to cart products', "
#   In order to order products
#   As a authenticated user
#   I'd like to be able check added to cart products
# " do
#   given!(:product) { create(:product) }

#   # before { create_list(:product, 2) }

#   describe 'when authenticated user' do
#     given(:user) { create(:user) }
#     given!(:cart) { create(:cart, user: user) }

#     background do
#       visit products_path
#       sign_in(user)
#       visit cart_path(cart)
#     end

#     scenario 'add product and check his cart', js: false do
#       expect(page).to_not have_content product.article

#       visit products_path
#       click_on 'В корзину'
#       visit cart_path(cart)

#       expect(page).to have_content product.article
#     end
#   end
# end
