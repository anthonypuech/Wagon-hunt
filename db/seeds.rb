# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all

boris= User.create!(email: "boris@lewagon.com", password: "testtest")
anthony= User.create!(email: "anthony@kiddygo.com", password: "testtest")

kudoz=Product.create!(user: boris, name: "Kudoz", url: "http://getkdoz.com", tagline: "Tinder for job", category: "tech")
Product.create!(user: boris, name: "uslide", url: "http://uslide.Com", tagline: "Youtube sucks for education", category: "education")
freebbble=Product.create!(user: anthony, name: "freebbble", url: "http://freebbble.com", tagline: "marketplace for designer", category: "design")

kudoz.upvotes.create! user: boris
freebbble.upvotes.create! user: anthony

#require "open-uri"
#require "json"

#url = "https://api.producthunt.com/v1/posts"
#headers = {
#  "Authorization" => "Bearer 307618982c4371c20c359d74e3e4b325472fd0ea4be6fab766944b31358265ec"
#}

#posts = JSON.parse(open(url, headers).read)["posts"]

#posts.each do |post|
#Product.create!(name: post["name"],tagline: post["tagline"],url: post["discussion_url"][1.15])
#end


