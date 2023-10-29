require "http"

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=chicago&units=imperial&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")

weather_data = response.parse
pp weather_data

# low_temp = weather_data["main"]["temp_min"]
# high_temp = weather_data["main"]["temp_max"]
# pp "The temperature in chicago today is a high of #{high_temp} fahrenheit and a low of #{low_temp} fahrenheit."

puts "What city would you like to forecast ?"
city_input = gets.chomp
puts "Whats is your preferred temperature unit: Celcius or Fahrenheit ?"
temp_input = gets.chomp
if temp_input == "celcius"
  temp_input = "metric"
else
  temp_input = "imperial"
end
response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city_input}&units=#{temp_input}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")
weather_data = response.parse
pp weather_data
