require "http"
response = HTTP.get("http://localhost:3000/products.json")
data = response.parse
pp data
require "http"
response = HTTP.get("http://localhost:3000/all_products.json")
data = response.parse
pp data
