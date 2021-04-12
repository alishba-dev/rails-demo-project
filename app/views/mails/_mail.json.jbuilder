json.extract! mail, :id, :name, :email, :created_at, :updated_at
json.url mail_url(mail, format: :json)
