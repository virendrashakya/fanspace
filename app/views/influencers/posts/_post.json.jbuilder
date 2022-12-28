json.extract! post, :id, :title, :body, :cost, :private, :influencer_id, :created_at, :updated_at
json.url post_url(post, format: :json)
