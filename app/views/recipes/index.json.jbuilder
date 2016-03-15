json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :description, :cook_time, :direction
  json.url recipe_url(recipe, format: :json)
end
