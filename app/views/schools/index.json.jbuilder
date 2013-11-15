json.array!(@schools) do |school|
  json.extract! school, :name, :state, :lga, :project_title, :project_description
  json.url school_url(school, format: :json)
end
