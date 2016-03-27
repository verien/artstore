Pay2go.setup do |pay2go|
  if Rails.env.development?
    pay2go.merchant_id = "11664507"  # 放測試站的 keys
    pay2go.hash_key    = "bOdxUj3LKLvbnsA5eAY2KUNj7IBT3YSe"
    pay2go.hash_iv     = "M5MHpQs9BXkYqV4E"
    pay2go.service_url = "https://capi.pay2go.com/MPG/mpg_gateway"
  else
    pay2go.merchant_id = "1234567"  # 放正式站的 key

    pay2go.hash_key    = "xxxxxxxx"
    pay2go.hash_iv     = "xxxxxxxx"
    pay2go.service_url = "https://api.pay2go.com/MPG/mpg_gateway"
  end
end
