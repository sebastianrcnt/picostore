# exclude home, auth

rails g controller manage/stores show edit
rails g controller manage/products index show new edit preview
rails g controller manage/memberships index show new edit preview
rails g controller manage/product_orders index show
rails g controller manage/membership_subscriptions index show
rails g controller manage/posts index show new edit preview
rails g controller manage/payments index show
rails g controller manage/payouts index show

rails g controller customer/products show
rails g controller customer/product_orders new complete index show
rails g controller customer/memberships show
rails g controller customer/membership_subscriptions new complete index show