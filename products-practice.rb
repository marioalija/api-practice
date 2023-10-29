require "http"
response = HTTP.get("http://localhost:3000/products.json")
data = response.parse
pp data
