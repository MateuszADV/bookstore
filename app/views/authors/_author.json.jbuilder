json.extract! author, :id, :name, :last_name, :century, :body, :created_at, :updated_at
json.url author_url(author, format: :json)
