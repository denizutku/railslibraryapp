json.extract! book, :id, :name, :description, :isbn, :is_taken, :author_id, :category_id, :created_at, :updated_at
json.url book_url(book, format: :json)
