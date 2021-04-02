json.extract! animal, :id, :name, :age, :bio, :email, :created_at, :updated_at
json.url animal_url(animal, format: :json)
