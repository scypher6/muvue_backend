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
# Fetched.destroy_all
# Genre.destroy_all
# Movie.destroy_all

GOOGLE_API_KEY = ENV['google_api_key']


#FETCH FOR ACTION
genre = 'action'
type = Genre.create(name: genre)          #CREATE GENRE
# youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=50&key=#{GOOGLE_API_KEY}&type=video&q=youtube+movies+free+with+ads+#{genre}")
youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx&key=#{GOOGLE_API_KEY}&maxResults=50&q=#{genre}")
movie_data = JSON.parse(youtube_data)['items']

movie_data.each do |movie|

    vidID = movie['snippet']['resourceId']['videoId']
   
    Genre.first.movies.create(
        videoId: vidID,
        title: movie['snippet']['title'],
        description: movie['snippet']['description'],
        img_url: "https://i.ytimg.com/vi_webp/#{vidID}/movieposter.webp"
    )

    # Fetched.create(
    #     movie_id: fetchedMovie.id,
    #     genre_id: type.id
    # )
    
 end

#FETCH FOR Horror
genre = 'horror'
type = Genre.create(name: genre)          #CREATE GENRE
# youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=50&key=#{GOOGLE_API_KEY}&type=video&q=youtube+movies+free+with+ads+#{genre}")
youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx&key=#{GOOGLE_API_KEY}&maxResults=50&q=#{genre}")
movie_data = JSON.parse(youtube_data)['items']

movie_data.each do |movie|

    vidID = movie['snippet']['resourceId']['videoId']
   
    Genre.second.movies.create(
        videoId: vidID,
        title: movie['snippet']['title'],
        description: movie['snippet']['description'],
        img_url: "https://i.ytimg.com/vi_webp/#{vidID}/movieposter.webp"
    )
# byebug
    # Fetched.create(
    #     movie_id: fetchedMovie.id,
    #     genre_id: type.id
    # )
    
 end


#FETCH FOR COMEDY
genre = 'comedy'
type = Genre.create(name: genre)          #CREATE GENRE
# youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=50&key=#{GOOGLE_API_KEY}&type=video&q=youtube+movies+free+with+ads+#{genre}")
youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx&key=#{GOOGLE_API_KEY}&maxResults=50&q=#{genre}")
movie_data = JSON.parse(youtube_data)['items']

movie_data.each do |movie|

    vidID = movie['snippet']['resourceId']['videoId']
   
    Genre.third.movies.create(
        videoId: vidID,
        title: movie['snippet']['title'],
        description: movie['snippet']['description'],
        img_url: "https://i.ytimg.com/vi_webp/#{vidID}/movieposter.webp"
    )

    # Fetched.create(
    #     movie_id: fetchedMovie.id,
    #     genre_id: type.id
    # )
    
 end


g1 = Genre.create(name: type)
u1 = User.create(name: 'Jon', username: 'jonny5', password: 'abc')
m1 = Movie.create(title: 'MI3', description: '5th Installment of Mission Impossible')

l1 = Like.create(user_id: u1.id, movie_id: m1.id)
r1 = Review.create(user_id: u1.id, movie_id: m1.id)
f1 = Favorite.create(user_id: u1.id, movie_id: m1.id)
f1 = Fetched.create(genre_id: g1.id, movie_id: m1.id)
rt1 = Rating.create(user_id: u1.id, movie_id: m1.id, stars:5)


puts "Successfully seeded! 🌱"





# movie_data = JSON.parse(youtube_data)['items']
# byebug
# movie_data.each do |movie|

#     vidID = movie['id']['videoId']
   
#     fetchedMovie = Movie.create(
#         videoId: vidID,
#         title: movie['snippet']['title'],
#         description: movie['snippet']['description'],
#         img_url: "https://i.ytimg.com/vi_webp/#{vidID}/movieposter.webp"
#     )

#     Fetched.create(
#         movie_id: fetchedMovie.id,
#         genre_id: action.id
#     )
    
#  end