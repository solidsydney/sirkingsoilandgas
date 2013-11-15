json.array!(@lpgs) do |lpg|
  json.extract! lpg, :full_name, :email, :username, :state, :city, :lga, :description
  json.url lpg_url(lpg, format: :json)
end
