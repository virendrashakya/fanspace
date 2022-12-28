json.extract! social_account, :id, :public_url, :icon, :influencer_id, :created_at, :updated_at
json.url social_account_url(social_account, format: :json)
