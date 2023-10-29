require "http"

puts "Would you like to hear a joke ?"
answer = gets.chomp

response = HTTP.get("https://v2.jokeapi.dev/joke/Any?safe-mode")

joke = response.parse
question = joke["setup"]
punchline = joke["delivery"]
if answer == "yes"
  puts question
  puts punchline
else
  puts question
  puts punchline
end
