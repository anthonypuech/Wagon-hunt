# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all


require "open-uri"
require "json"

url = "https://api.producthunt.com/v1/posts"
headers = {
  "Authorization" => "Bearer 307618982c4371c20c359d74e3e4b325472fd0ea4be6fab766944b31358265ec"
}

posts = JSON.parse(open(url, headers).read)["posts"]

posts.each do |post|
  Product.create!(name: post["name"],tagline: post["tagline"],url: post["discussion_url"][1.15])
end
