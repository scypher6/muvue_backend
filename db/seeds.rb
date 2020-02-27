# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client';
# require "net/http"
# require 'uri'

KEY = 'AIzaSyClQEe2YFSdU3uUvnsQqmoUpkDAkohrRiI'



#FETCH FOR ACTION
genre = 'action'
action = Genre.create(name: genre)          #CREATE GENRE
youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=50&key=AIzaSyClQEe2YFSdU3uUvnsQqmoUpkDAkohrRiI&type=video&q=youtube+movies+free+with+ads+#{genre}")
movie_data = JSON.parse(youtube_data)['items']

movie_data.each do |movie|

    vidID = movie['id']['videoId']
   
    fetchedMovie = Movie.create(
        videoId: vidID,
        title: movie['snippet']['title'],
        description: movie['snippet']['description'],
        img_url: "https://i.ytimg.com/vi_webp/#{vidID}/movieposter.webp"
    )

    Fetched.create(
        movie_id: fetchedMovie.id,
        genre_id: action.id
    )
    
 end

#FETCH FOR ANIMATION
genre = 'animation'
action = Genre.create(name: genre)          #CREATE GENRE
youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=50&key=AIzaSyClQEe2YFSdU3uUvnsQqmoUpkDAkohrRiI&type=video&q=youtube+movies+free+with+ads+#{genre}")
movie_data = JSON.parse(youtube_data)['items']

movie_data.each do |movie|

    vidID = movie['id']['videoId']
   
    fetchedMovie = Movie.create(
        videoId: vidID,
        title: movie['snippet']['title'],
        description: movie['snippet']['description'],
        img_url: "https://i.ytimg.com/vi_webp/#{vidID}/movieposter.webp"
    )

    Fetched.create(
        movie_id: fetchedMovie.id,
        genre_id: action.id
    )
    
 end

#FETCH FOR COMEDY
genre = 'comedy'
action = Genre.create(name: genre)          #CREATE GENRE
youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=50&key=AIzaSyClQEe2YFSdU3uUvnsQqmoUpkDAkohrRiI&type=video&q=youtube+movies+free+with+ads+#{genre}")
movie_data = JSON.parse(youtube_data)['items']

movie_data.each do |movie|

    vidID = movie['id']['videoId']
   
    fetchedMovie = Movie.create(
        videoId: vidID,
        title: movie['snippet']['title'],
        description: movie['snippet']['description'],
        img_url: "https://i.ytimg.com/vi_webp/#{vidID}/movieposter.webp"
    )

    Fetched.create(
        movie_id: fetchedMovie.id,
        genre_id: action.id
    )
    
 end


g1 = Genre.create(name: action)
u1 = User.create(name: 'Jon', username: 'jonny5')
m1 = Movie.create(title: 'MI3', description: '5th Installment of Mission Impossible')

l1 = Like.create(user_id: u1.id, movie_id: m1.id)
r1 = Review.create(user_id: u1.id, movie_id: m1.id)
f1 = Favorite.create(user_id: u1.id, movie_id: m1.id)
f1 = Fetched.create(genre_id: g1.id, movie_id: m1.id)
rt1 = Rating.create(user_id: u1.id, movie_id: m1.id, stars:5)


puts "Successfully seeded! 🌱"