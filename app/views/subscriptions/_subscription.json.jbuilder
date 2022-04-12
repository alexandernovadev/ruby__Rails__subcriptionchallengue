json.extract! subscription, :id, :email, :isWomen, :isMen, :isChildren, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
