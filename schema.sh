rails g model user email:string name:string password_hash:string is_email_verified:boolean authentication_strategy_type:integer payback_bank:string payback_bank_account:string balance:integer
rails g model store name:string description:text cover_image:attachment owner_id:integer
rails g model product name:string description:text default_tier_id:integer creates_license_key:boolean cover_image:attachment thumbnail_image:attachment price:integer store_id:integer
rails g model product_tier name:string product_id:integer price:integer description:text files:attachments
rails g model product_promotion_code product_id:integer code:string quantity:integer used_quantity:integer discount_type:integer discount_rate:float discount_price:integer
rails g model membership name:string description:text default_tier_id:integer creates_license_key:boolean cover_image:attachment thumbnail_image:attachment store_id:integer
rails g model membership_tier name:string description:string payment_period:integer membership_id:integer monthly_price:integer monthly3_price:integer monthly6_price:integer yearly_price:integer
rails g model membership_promotion_code product_id:integer code:string quantity:integer used_quantity:integer discount_type:integer discount_rate:float discount_price:integer
rails g model product_order product_id:integer product_tier_id:integer product_promotion_code_id:integer quantity:integer price:integer orderer_id:integer orderer_email:string orderer_initial_password:string
rails g model membership_subscription membership_id:integer membership_tier_id:integer membership_promotion_code_id:integer next_purchase_time:datetime payment_period: integer price_per_period:integer active:boolean subscriber_id:integer subscriber_email:string subscriber_initial_password:string
rails g model post title:string content:text files:attachments
rails g model post_to_audience_group post_id:integer audience_id:integer
rails g model audience_group name:string
rails g model audience_group_to_membership_subscription audience_group_id:integer membership_subscription_id:integer
rails g model product_order_payment product_order_id:integer payment_id:integer purchase_time:datetime
rails g model membership_subscription_payment membership_subscription_id:integer payment_id:integer purchase_time:datetime
rails g model payment pg:string pay_method:string merchant_pid:string name:string amount:integer buyer_email:string buyer_name:string buyer_tel:string buyer_addr:string buyer_postcode:string imp_uid:string is_amount_validated:boolean
rails g model payout user_id:integer amount:integer done:boolean starts_from:datetime ends_at:datetime paid_at:datetime