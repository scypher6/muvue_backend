# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client';
require 'faker';
# require "net/http"
# require 'uri'
# Fetched.destroy_all
# Genre.destroy_all

#  Movie.destroy_all

GOOGLE_API_KEY = ENV['google_api_key']


#FETCH FOR ACTION
genre = 'action'
type = Genre.create(name: genre)          #CREATE GENRE
# youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=50&key=#{GOOGLE_API_KEY}&type=video&q=youtube+movies+free+with+ads+#{genre}")

# youtube_data = {
#     "kind": "youtube#playlistItemListResponse",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/EmQ9XlhKi11QWWf1SL9B80IllmY\"",
#     "nextPageToken": "CDIQAA",
#     "pageInfo": {
#     "totalResults": 400,
#     "resultsPerPage": 50
#     },
#     "items": [
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/t0fpS9Syrx5B9y7yRLqPr1V6RAI\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5EQUYzRkFGMDA4OTBFNEM5",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Super Size Me 2: Holy Chicken",
#     "description": "In the 13 years since Super Size Me, the fast-food industry has undergone a makeover. Today, chain restaurants tout food that's \"healthy,\" \"organic,\" and \"natural.\" Filmmaker Morgan Spurlock explores this new reality with an approach even more immersive and subversive than that used for his first film: he sets out to open his own chicken franchise. We follow him every step of the way, from raising poultry and conjuring recipes to designing the brand and scouting a location. Spurlock brings his disarming humor to uncover the truths and lies behind this multibillion-dollar industry.Navigating a world of cynics and opportunists, Spurlock comes across like a hillbilly Jimmy Stewart with refreshing optimism. He confronts one challenge after another in his mission to live up to his ideals. The film feels especially timely when the US has a junk-food-loving President and an epidemic of false claims in advertising. Spurlock pays close attention to the Orwellian buzzwords that marketers use to bring a \"health halo\" to industrial food. While the original Super Size Me made a specific example of McDonald's, this compelling sequel focuses on new targets and doesn't hold back on naming names. The film builds momentum towards the day when Spurlock puts his reputation on the line by serving his first customers.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/dSyicDf9UvI/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/dSyicDf9UvI/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/dSyicDf9UvI/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/dSyicDf9UvI/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/dSyicDf9UvI/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 0,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "dSyicDf9UvI"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/pZ7X0VQCo_PfvzXYrP1j-IFTSi4\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5GRkY0NUU0RTc2NDAyMDE4",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Barbershop 2: Back in Business",
#     "description": "Time for another haircut -- the buzz is back in Barbershop 2. Calvin (Ice Cube), Eddie (Cedric the Entertainer), Terri (Eve), Jimmy (Sean Patrick Thomas), Issac (Troy Garity), Ricky (Michael Ealy), and Dinka (Leonard Earl Howze) are open for business again at Calvin's Barbershop, with Queen Latifah cutting up as Gina, a stylist at the beauty shop next door. Calvin is again struggling to keep his father's shop and traditions alive, this time against urban developers looking to replace \"mom & pop\" establishments with name-brand chains.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/ON2K5LhrSls/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/ON2K5LhrSls/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/ON2K5LhrSls/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/ON2K5LhrSls/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/ON2K5LhrSls/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 1,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "ON2K5LhrSls"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/TXr0whNBl6N4p5tV9nOQtRzAWfg\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC45OTQ1MkNDQzU0NkFFNTlC",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Sea Level",
#     "description": "Pup, a bamboo shark, discovers egg sacs while playing around the ocean with his friends. When he sees human poachers stealing the eggs from his reef, Pup makes it his mission to save his family. As he leaves the sea and enters the beautiful, yet dangerous, world of humans he'll prove he isn't too small to save his family.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/UlubUGHZ0bg/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/UlubUGHZ0bg/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/UlubUGHZ0bg/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/UlubUGHZ0bg/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/UlubUGHZ0bg/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 2,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "UlubUGHZ0bg"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/2LAtoiNSzJRisDlxuAgWkYVen_I\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5FRDdDQzUzMUYxOEQ5MERE",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Arthur's Missing Pal",
#     "description": "When Arthur's dog Pal disappears, Arthur must enlist the help of his friends to track him down. While Pal discovers his newfound freedom, Arthur discovers how much he misses his dog. Good thing Arthur has the gang to turn to-especially his best friend, Buster Baxter who dusts off his old detective gear to get on the case. This canine quest leads Arthur and Buster across Elwood city, to an ice cream factory, past a giant cow on ice skates, and right up to the point where all hope seems lost. Could the solution to this caper, though, be right in front of Arthur's eyes? And why has D.W. been acting so funny lately? One thing's for certain, Arthur is determined to get to the bottom of this case. Follow Arthur, Buster and all their friends through the streets of Elwood City as they sniff out clues and chase after leads...and learn a valuable lesson about friendship, teamwork and responsibility.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/SXYlAoVC80w/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/SXYlAoVC80w/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/SXYlAoVC80w/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/SXYlAoVC80w/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 3,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "SXYlAoVC80w"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/9tjwrCInO0l6oC_Nb7OICsIVBI4\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC44OUMyQjg1QTRDODBFMzAz",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Out of Time",
#     "description": "Matt Lee Whitlock, respected chief of police in small Banyan Key, Florida, must solve a vicious double homicide before he himself falls under suspicion. Matt Lee has to stay a few steps ahead of his own police force and everyone he's trusted in order to find out the truth.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/yk9mZAJY9g0/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/yk9mZAJY9g0/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/yk9mZAJY9g0/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 4,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "yk9mZAJY9g0"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/LtxtyJ95_qCweqAUKGwmyd-hCX0\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5CMUI0QTFFRTUyNTU1RDJE",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Into the Blue",
#     "description": "Young vacationers, expecting to have a memorable time diving, find themselves in deep trouble with a druglord when they come upon the illicit cargo of a sunken airplane. Paul Walker and Jessica Alba lead the cast in this underwater trhiller packed with action and surprises.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/Pu3GxJS9phc/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/Pu3GxJS9phc/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/Pu3GxJS9phc/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 5,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "Pu3GxJS9phc"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/5pk4gxnBOMTN3vtuslCWFfNV9wo\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5BNjY5NzJBRjM1QjBFQTg0",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Snow Queen",
#     "description": "Based on the acclaimed children's book by Hans Christian Andersen, A young girl named Gerda battles the evil ice queen to save the world from eternal winter, with the help of some unlikely and very magical friends.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/-AQc0BGWskM/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/-AQc0BGWskM/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/-AQc0BGWskM/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/-AQc0BGWskM/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/-AQc0BGWskM/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 6,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "-AQc0BGWskM"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/eRj0zYaQ9rRENk_S_PZVk_EQEKo\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC4zQTVEODZGOTY5MTI2QjIy",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Ribbit",
#     "description": "Ribbit is a frog with an identity crisis. He hates hopping,water, pretty much anything a normal frog likes to do! Together with his best friend, a flying squirrel, he embarks on a journey in search of his rightful place in this world.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/tahzHMWUXKA/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/tahzHMWUXKA/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/tahzHMWUXKA/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/tahzHMWUXKA/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/tahzHMWUXKA/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 7,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "tahzHMWUXKA"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/zeEQKuf6uxgE2k_vx1dj1tAzCFA\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5DMTE0ODI0QzgxOEJDMDdD",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "The Escort",
#     "description": "An unlikely bond forms between two sexually consumed outcasts.  Mitch, a sex obsessed journalist, convinces Natalie, a Stanford- educated prostitute, to allow him to follow her around for an exposé he’s writing for a magazine. While initially hesitant to allow him into her life, Natalie eventually sees an upside for herself, as she (unbeknownst to Mitch) starts using him as a bodyguard to protect her from the assorted personalities she deals with on a nightly basis. What starts out as a business proposition, develops into something more.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/iLc4wHK_3Zg/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/iLc4wHK_3Zg/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/iLc4wHK_3Zg/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 8,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "iLc4wHK_3Zg"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/VN9QnYryCbhSAX2ETrFHIXNS1a0\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC4zRDZGMkVBRDVERjE2OTc4",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Super Size Me",
#     "description": "Director Morgan Spurlock's social experiment in fast-food gastronomy sees him attempting to subsist uniquely on food from the McDonald's menu for an entire month. In the process his weight balloons, his energy level plummets and he experiences all sorts of unexpected -- and terrifying -- side effects. He also examines the corporate giant's growing role in the lives of American consumers and explores its methods of indoctrinating young people and its contribution to America's obesity epidemic.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/zKQGAv8gtBA/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/zKQGAv8gtBA/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/zKQGAv8gtBA/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/zKQGAv8gtBA/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/zKQGAv8gtBA/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 9,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "zKQGAv8gtBA"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/G5Zd0iQXIaIb9RU170NGGZoIyqA\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC4xNjdBQkQ1QjlDOURENDdC",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Sleepover",
#     "description": "In the summer before their freshman year in high school, Julie (Alexa Vega) has a slumber party with her best friends, Hannah, Yancy and Farrah -- and they end up having the adventure of their lives. In an attempt to cast off their less-than-cool reputations once and for all, Julie and her friends enter into an all-night scavenger hunt against their 'popular girl' rivals. Sneaking into clubs, hijacking dad's car, evading Julie's mother, and maybe even a first kiss -- anything's possible at Julie's sleepover.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/3vRr-A-_j7E/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/3vRr-A-_j7E/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/3vRr-A-_j7E/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 10,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "3vRr-A-_j7E"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/qB0APtuIi7OBGJtRfzJhysAet1M\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5GMTlBNTVFQzVBOTNDQ0U4",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Snowflake, The White Gorilla",
#     "description": "Snowflake is the only white gorilla in the world, and the main attraction at the zoo. Children love her, but because she's different other gorilla's do not. With the help of Jenga, the eccentric red panda, Snowflake plans a secret mission to sneak out of the zoo, venturing into the dangerous city in order to find the witch who can help her become a \"normal\" gorilla. Will Snowflake find the cure she's looking for, or realize that there's something more important than fitting in.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/wK4L54Pwhqw/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/wK4L54Pwhqw/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/wK4L54Pwhqw/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/wK4L54Pwhqw/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/wK4L54Pwhqw/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 11,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "wK4L54Pwhqw"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/rKn48HFsZmqQbFmOIquZNdnXALE\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC40RkM2RjNEMkU2QkVCNzQw",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Journey to the West",
#     "description": "In a world plagued by demons who cause great human suffering, young demon hunter Xuan Zang risks his all to conquer a water demon, a pig demon and the demon of all demons, Sun Wukong. Adhering to his firm belief in giving of one's self for the greater cause, he embraces the demons as his disciples. However, in order to atone for their own sins and save the common people, the four of them must embark on a journey to the West that's full of challenges.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/EdCKVo7jAH8/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/EdCKVo7jAH8/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/EdCKVo7jAH8/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/EdCKVo7jAH8/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/EdCKVo7jAH8/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 12,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "EdCKVo7jAH8"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/vL78Te2tgA20_kLudW0c2JUsD5Y\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC4wODIwMTUxMjExOTIyOUEw",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Brother's Keeper",
#     "description": "Identical twins Andy (Graham Miller) and Pete (Alex Miller) have always been close, but their lives are forever altered when aspiring preacher Pete is framed for murder. Revenge may seem sweet, but “Brother’s Keeper” is a powerful reminder that only forgiveness can truly heal.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/9QxJDCKbP94/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/9QxJDCKbP94/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/9QxJDCKbP94/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/9QxJDCKbP94/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/9QxJDCKbP94/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 13,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "9QxJDCKbP94"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/c9PolDWQ8M8BHzhJE4WMsdPed6k\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5ERTZDOTBGMTRDNzI5Njk5",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "The Seat Filler",
#     "description": "Romance and drama occur after a pop superstar falls for an audience member -- a seat filler posing as an industry executive -- at a music awards show. MPAA Rating: PG-13",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/eDebJlF4Jfg/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/eDebJlF4Jfg/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/eDebJlF4Jfg/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/eDebJlF4Jfg/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 14,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "eDebJlF4Jfg"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/apu0Yetl5jdECWbieN89joIaHVU\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5BRjgxRUEwRjQ2MDE5RTZB",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Child's Play",
#     "description": "When serial killer Charles Lee Ray is mortally wounded in a police shoot-out, he uses a voodoo spell to transfer his soul into Chucky, a \"Good Guys\" doll. Young Andy receives the doll as a birthday gift, and Chucky soon resumes his killing spree. However, Charles doesn't want to be trapped in the body of a doll forever. His only escape would be to transfer into the first human he revealed his true identity to... which places Andy in mortal danger.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/hcsHPsAZkBY/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/hcsHPsAZkBY/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/hcsHPsAZkBY/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/hcsHPsAZkBY/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/hcsHPsAZkBY/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 15,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "hcsHPsAZkBY"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/LgNQ9t6NSvb-_ShAv0QggtLOYhM\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC4wQzIyMEQ5NjUxNTRGRUU2",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Icetastrophe",
#     "description": "A piece of a meteor strikes the center of a small mountain town and causes deadly freezing temperatures in this disaster flick.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/0_nlmuIz-_s/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/0_nlmuIz-_s/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/0_nlmuIz-_s/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/0_nlmuIz-_s/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/0_nlmuIz-_s/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 16,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "0_nlmuIz-_s"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/1I5VkLU_V5N4I2BkoYxRyeHiYVQ\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5FRjlFOUNBMkE5OTBBRTZE",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Stormageddon",
#     "description": "When a rogue AI program takes over America's computer systems and learns to manipulate the weather, two robots must fight to gain control of the program before it's too late.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/MsqrAq0XLtY/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/MsqrAq0XLtY/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/MsqrAq0XLtY/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/MsqrAq0XLtY/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/MsqrAq0XLtY/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 17,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "MsqrAq0XLtY"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/brIao7nmEM1aTyf3ePR1uFoCBt8\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC4xN0M2QTg1OUE5OTI2MEY4",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Devil Winds",
#     "description": "Brilliant Oklahoma storm chaser Peter Jensen loses his wife in a tornado and leaves his old life behind. Ten years later, he returns to his home town to attend his estranged daughter's graduation and realizes that there is another storm developing that could destroy the whole region and must save his loved ones before it is too late.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/pOIQSwB38NM/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/pOIQSwB38NM/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/pOIQSwB38NM/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/pOIQSwB38NM/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 18,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "pOIQSwB38NM"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/7WXpXS_vjO14AjsKfR6eaLHZCdo\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5BRTQ0M0RFMjQ4QTRDMDRF",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Be Cool",
#     "description": "Be Cool is the wildly hilarious tale about a gangster turned music mogul... and what it takes to be number one with a bullet.  When Chili Palmer decides to try his hand in the music industry, he romances the sultry widow of a recently whacked music exec, poaches a hot young singer from a rival label and discovers that the record industry is packin' a whole lot more than a tune!",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/0-xEputM12U/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/0-xEputM12U/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/0-xEputM12U/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/0-xEputM12U/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/0-xEputM12U/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 19,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "0-xEputM12U"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/lUg40fWKb5W07r11tLxL8jImi4E\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5BMTY4Qjk3QjY3MkMyRDkz",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "A Girl Like Grace",
#     "description": "Raised by a single mother, a bullied 17 year-old girl seeks guidance from her best friend and the girl's older sister.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/-5Vm9EFxJcg/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/-5Vm9EFxJcg/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/-5Vm9EFxJcg/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/-5Vm9EFxJcg/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/-5Vm9EFxJcg/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 20,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "-5Vm9EFxJcg"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/IjCwtVNumO4nXggVhLyx_5l0WCY\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5DOUU4OUEzN0FBNjZCOUVD",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Trespass",
#     "description": "Held for ransom, a married couple’s predicament grows increasingly dire amid the discovery of betrayal and deception. Starring Nicolas Cage (“Leaving Las Vegas”) and Nicole Kidman (“Moulin Rouge!”).",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/-G4FNeOL2oI/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/-G4FNeOL2oI/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/-G4FNeOL2oI/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/-G4FNeOL2oI/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/-G4FNeOL2oI/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 21,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "-G4FNeOL2oI"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/5wVPZBldyBCMKzb4AWNQSaLFiJc\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC43RDc5OEY2REI2QjExODA0",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Stolen",
#     "description": "A former thief frantically searches for his missing daughter, who has been kidnapped and locked in the trunk of a taxi. Starring Nicolas Cage and Malin Akerman.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/C18i6v_PdgA/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/C18i6v_PdgA/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/C18i6v_PdgA/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/C18i6v_PdgA/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/C18i6v_PdgA/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 22,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "C18i6v_PdgA"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/-yXCBh2uowRRsL_Tw3Fe9a9Jk0c\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5BQjA5NUUzRUQ0QzU1RTk3",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "With Great Power: The Stan Lee Story",
#     "description": "WITH GREAT POWER: THE STAN LEE STORY explores the vivid life and imagination of Stan Lee, the 94-year-old comic book legend who co-created over 500 legendary pop culture characters including Spider-Man, X-Men, Iron Man, Thor and The Hulk. Featuring interviews with both fans and colleagues including Kevin Smith, Patrick Stewart, Samuel L. Jackson, and Eva Mendes, the film is the tale of one man's determination to tell incredible stories that have enchanted the world for over 40 years.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/Ct9VTQnPa5c/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/Ct9VTQnPa5c/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/Ct9VTQnPa5c/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 23,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "Ct9VTQnPa5c"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/m43jl0XwFDNHz4m4SoCoW_3487s\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5COTY1N0M0MTY2MUU4Q0FD",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Elvis: The Final Hours",
#     "description": "The death of the King of Rock n Roll shocked the world. How did this happen? The true story of Elvis Presley's last hours on Earth is told by the men who knew him best, his Memphis Mafia. Elvis' closest friends and confidants share their memories and experiences with the King and what really happened during his final hours. Including interviews with Sonny West, Billy Smith, Larry Geller, Joe Esposito, Jerry Schilling, Marty Lacker, and Lamar Fike.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/fDQZLyUU2D4/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/fDQZLyUU2D4/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/fDQZLyUU2D4/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 24,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "fDQZLyUU2D4"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/xR74N3U3LClUIHwH-43m2L6UFhA\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC43MjhGREVGQzZDNTNCRkJB",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "So Undercover",
#     "description": "A tough, street-smart private eye is hired by the FBI to go undercover in a college sorority.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/ZldYaXKZlrs/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/ZldYaXKZlrs/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/ZldYaXKZlrs/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/ZldYaXKZlrs/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/ZldYaXKZlrs/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 25,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "ZldYaXKZlrs"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/CLiIK68iYuznfI9wOMuleX6G7WM\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC44REM1RDkyRjRBNDQxNzYx",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "The Neighbor",
#     "description": "A guy whose life is in turmoil falls for an attractive real estate broker who moves into the condo next door. He has yet to realize that she expects him to move out for her planned renovation.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/M6c_BqWVKzs/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/M6c_BqWVKzs/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/M6c_BqWVKzs/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/M6c_BqWVKzs/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 26,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "M6c_BqWVKzs"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/L9YKoJiu_wbWee02HeQ7BPJcVXw\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC41MEVCRTIzMDE4QzYxQ0E0",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Wargames",
#     "description": "A 80's teenager, bored by traditional high school subjects like biology but fascinated by computers, accidentally taps into the Pentagon's top-secret computer...the USA's NORAD system.  He starts what he innocently believes is a computer game called \"Global Thermonuclear War,\" but the \"game\" is real.  The Pentagon's best minds cannot shut down or reprogram the supercomputer that is readying a missile attack against the USSR, and thereby unleash Armageddon.  The teen and his girlfriend attempt to aid the helpless Pentagon and, in a frantic race against a ticking \"doomsday clock,\" try to persuade the computer to end the \"game.\"",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/HNLQ-O-Qx3Y/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/HNLQ-O-Qx3Y/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/HNLQ-O-Qx3Y/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/HNLQ-O-Qx3Y/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/HNLQ-O-Qx3Y/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 27,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "HNLQ-O-Qx3Y"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/SggXoQBLx_nxaZLwi_s3bWOXPkU\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC40NEQzMkRENzYxM0ExNTNC",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Earthstorm",
#     "description": "A massive asteroid impact on the moon begins causing storms on Earth due to the sudden changes in ocean tides. But when further examination is conducted, it's discovered that the moon's structure is now entirely unstable, threatening all life on Earth. With time running out, a team of scientists turns to one man, demolitions expert John Redding, in an effort to find a solution and secure the moon.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/Q-JexXIodZw/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/Q-JexXIodZw/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/Q-JexXIodZw/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/Q-JexXIodZw/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 28,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "Q-JexXIodZw"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/wXVwQvpEU1UEO134uUi5_dRkPT0\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC45QUQ4M0VDN0VFMENENDJD",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Daylight's End",
#     "description": "Years after a mysterious plague has devastated the planet and turned most of humanity into blood-hungry creatures, a rogue drifter on a vengeful hunt stumbles across a band of survivors in an abandoned police station and reluctantly agrees to try to help them defend themselves and escape to the sanctuary they so desperately need.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/C-e4SC4KomE/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/C-e4SC4KomE/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/C-e4SC4KomE/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/C-e4SC4KomE/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/C-e4SC4KomE/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 29,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "C-e4SC4KomE"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/L_j0zCr7fNezIMsNkk6uvaczmUU\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5CMEZCMzM4QTNGRDM5OEND",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Navy Seals",
#     "description": "When Middle-Eastern terrorists acquire some American stinger missiles, it's up to the U.S. Navy's elite commando unit, the Navy SEALS, to ward off their challenge and blow them up.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/hFtegiUpgBw/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/hFtegiUpgBw/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/hFtegiUpgBw/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/hFtegiUpgBw/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/hFtegiUpgBw/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 30,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "hFtegiUpgBw"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/IkgjjR7yF2TNSBBwCe6NwEgKbDw\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5FNzgxQjI3NTk3OTA0NkQ2",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Atomic Twister",
#     "description": "When tornadoes hit a nuclear power plant, critically damaging the plant's cooling system, the results could be catastrophic. “Atomic Twister,” a countdown to disaster, traces an extraordinary day in the lives of small-town citizens who unexpectedly find themselves facing the possibility of mass destruction.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/9SZayk95KmI/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/9SZayk95KmI/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/9SZayk95KmI/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/9SZayk95KmI/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 31,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "9SZayk95KmI"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/f1Yj5Ogp-znj4ZN1ZSFZfblfFKI\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5GNzk1MTE2NkU0NkUxOEUw",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "The Snow Walker",
#     "description": "A pilot and his passenger struggle for survival after crashing in the Arctic tundra.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/ngvrS-XWGJc/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/ngvrS-XWGJc/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/ngvrS-XWGJc/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/ngvrS-XWGJc/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 32,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "ngvrS-XWGJc"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/4jtwe3QvjVapxXMq_Yvi-U1Q_x8\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5BMUQ0MDFDMjZDREQ0NzU5",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Over The Top (1987)",
#     "description": "Some fight for money. Some fight for glory. He's fighting for his son's love. Sylvester Stallone blends action with sentimentality in this family action drama as struggling trucker Lincoln Hawk who, following the death of his estranged wife, strives to rebuild his life. Although he tries to make amends with the son he left years earlier, the boy wants little to do with his father--until Lincoln enters the national arm-wrestling competition in Las Vegas. Stallone co-wrote the screenplay.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/MFb1eG5CgzI/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/MFb1eG5CgzI/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/MFb1eG5CgzI/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/MFb1eG5CgzI/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/MFb1eG5CgzI/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 33,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "MFb1eG5CgzI"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/MJdM-kvK0P6ud2jdArZ1sug3UaU\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC44MEQ2NjkxMDdEREZGQjRC",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Legendary",
#     "description": "Travis Preston assembles his team for an expedition to a remote region in China's hinterland, where a wild animal that the locals believe to be a primeval monster they call the \"Shocate\" is said to roam free. Travis's nemesis Jim Harker, a merciless trophy hunter, has already set up camp. A race against time ensues, and Travis and his team will have to pool all their resources if they want to capture this legendary creature alive.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/kfWdI1nIgzk/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/kfWdI1nIgzk/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/kfWdI1nIgzk/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/kfWdI1nIgzk/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/kfWdI1nIgzk/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 34,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "kfWdI1nIgzk"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/b2AkcSOlfQzqJFCMcV1jHTB0_FU\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC4wNUVEQzNFRTRDQkVENjVG",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Epoch",
#     "description": "A mysterious monolith sends out an intercontinental signal, prompting a specialized team of investigators to discover the truth before cosmic disaster strikes.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/J0daSW8vQ5Y/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/J0daSW8vQ5Y/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/J0daSW8vQ5Y/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/J0daSW8vQ5Y/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 35,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "J0daSW8vQ5Y"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/C1ZBJ3zgfjC4WIsHMa5OQsjw-7k\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC43NDg2MEUwQzgxNDU1MzQ1",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Felony",
#     "description": "Malcolm Toohey (Joel Edgerton of Zero Dark Thirty) is a committed husband, father and a dedicated detective who’s not afraid to put his body on the line. After surviving a shot through his bullet proof vest during a major drug bust, his Drugs Squad rowdily celebrates their success and Malcolm’s courage at the local pub. Although Malcolm has been drinking, he gets in his car to drive home – and a tragic accident occurs. \nShortly after, Jim Melic (Jai Courtney of Divergent) and his veteran partner Carl Summer (two-time Academy Award nominee Tom Wilkinson) are assigned to the case. Jim narrows his focus onto Malcolm as Carl does everything he can to cover up the truth for a fellow cop, putting his own distinguished career on the line.\nAs these three detectives become embroiled in a tense psychological struggle, every idea they’ve ever had about the meaning of justice, guilt, and innocence will be questioned. How far will each man go?",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/b8fnSUit5jI/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/b8fnSUit5jI/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/b8fnSUit5jI/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/b8fnSUit5jI/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/b8fnSUit5jI/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 36,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "b8fnSUit5jI"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/p_5w-LpJ3S3RQYRJODSQsCsUpI0\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC44NTBBRjM4MTNBNDc5MDZG",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Beyond Beyond",
#     "description": "Jonah is determined to find his parents in the mysterious land of The Feather King. Soon, his wild adventures begin to unravel the strict rules of The Feather Kingdom and the world they know begins crumbling around them. Will Jonah find a way to return home with both of his parents and save this strange new world he's discovered?",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/YWLWnocRmTs/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/YWLWnocRmTs/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/YWLWnocRmTs/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/YWLWnocRmTs/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/YWLWnocRmTs/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 37,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "YWLWnocRmTs"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/QhRGiJxlmm8v5TVWg2gHeq50ISo\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC41RDY4QzFENzg2Q0VGNjg0",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "The Legend of King Solomon",
#     "description": "Young Solomon is infatuated with the Queen of Sheeba, who has arrived to gauge his suitability for marriage. In his eagerness to impress her, he breaks his late father’s command and accidentally releases the devil Asmodeus from his prison in the belly of the earth. Unleashing havoc, Asmodeus takes over the Kingdom of Jerusalem and banishes Solomon. When Solomon arrives in Petra, he meets the beautiful and daring Princess Naama. Together, they search for a way to end Asmodeus’ tyrannical thirst for power.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/tkmy6sAGTvE/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/tkmy6sAGTvE/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/tkmy6sAGTvE/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 38,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "tkmy6sAGTvE"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/Zl_WrHAVgbAbY_hwaTY45q_LUek\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC4yNzY2MjU3M0Q1QzZCRjMy",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Diana: The Royal Truth",
#     "description": "A captivating first hand account of the life of one of the most iconic figures of the 20th century, Diana Princess of Wales, by the man who lived through it all. From innocent dreamer to divorced change-bringer the turbulent life of Diana was rocked the world. With exclusive insight and anecdotes prepare to uncover the heartbreaking true story of the most photographed woman in the world and the mother of the future King.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/ri8YBB5v878/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/ri8YBB5v878/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/ri8YBB5v878/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 39,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "ri8YBB5v878"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/O_-TZDtHqvY-qWiiYUz16XBzYaM\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5BMEM3NTRDOTM2QTlBNUQ5",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Teen Wolf",
#     "description": "A teenage boy's incredible werewolf powers improve the quality of his life in dramatic and hilarious ways.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/s9mIQW9Ohlk/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/s9mIQW9Ohlk/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/s9mIQW9Ohlk/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/s9mIQW9Ohlk/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/s9mIQW9Ohlk/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 40,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "s9mIQW9Ohlk"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/_40CQw5qW8NKlgZX0ROJph5K4Xk\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC40NkQ1REY3MUQ0OEM3MzFE",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Hackers",
#     "description": "Cereal Killer, Phantom Phreak, Crash Override...if these handles appear on your computer screen, you're beyond saving--consider yourself hacked. In this cyberpunk thriller, a renegade group of elite teenage computer hackers rollerblade through New York City by day and ride the information highway by night. After hacking into a high-stakes industrial conspiracy, they become prime suspects and must recruit the best of the cybernet underground to help clear their names.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/5T_CqqjOPDc/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/5T_CqqjOPDc/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/5T_CqqjOPDc/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 41,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "5T_CqqjOPDc"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/1CDLTPx9DJrOokAkDZgGGdHLnWQ\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC43NTA2MTFCMERGNThCNUY4",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Dino King",
#     "description": "Meet Speckles. He's a Tarbosaurus, and lives a happy life in his forest home with his mom and siblings. Until one day, as he's just learning to hunt, he encounters One-Eye, a Tyrannosaur looking for a new place to live. His herd is attacked, leaving poor Speckles alone in the world.  But when he meets Blue Eyes, another lonely and lost Tarbosaur, they become close companions - and then, over time, a family of their own.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/4SLNdp-uFIg/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/4SLNdp-uFIg/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/4SLNdp-uFIg/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 42,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "4SLNdp-uFIg"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/WSTiMch0cuxj3qMgUP5ruai6nSE\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC41RjdFM0VFNDQyQTkwQTA3",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "The Benefactor",
#     "description": "Richard Gere delivers a bravura performance as the title character, a rich eccentric man who worms his way into the lives of a deceased friend’s young daughter and her new husband . Writer-director Andrew Renzi’s narrative feature debut is a warm and winsome story that explores the pangs of the past and reflects on what it is to be family.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/6NZ98wcfT0E/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/6NZ98wcfT0E/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/6NZ98wcfT0E/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/6NZ98wcfT0E/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/6NZ98wcfT0E/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 43,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "6NZ98wcfT0E"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/G3hWDmIj5zBU97WS_kA2M_0WrO4\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC43MDQ3MkNENjE5RTY4OUZE",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Goodbye World",
#     "description": "When a mysterious cyber-attack cripples civilization, a group of old college friends retreat to a remote country home, where they must cope with an uncertain future while defending themselves against desperate outsiders. 2014 GOODBYE WORLD, LLC 2014 Phase 4 Films (USA), LLC. All Rights Reserved. Phase 4 Films, the Phase 4 Films logo and all related titles, logos and indicia are trademarks of Phase 4 Films Inc. All Rights Reserved. Distributed exclusively in the United States by Phase 4 Films (USA), LLC. / 460 Greenway Industrial Drive, Suite A, Fort Mill, SC 29708 / 1.866.495.3650 / www.phase4films.com",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/SYtni31jIMM/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/SYtni31jIMM/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/SYtni31jIMM/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/SYtni31jIMM/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/SYtni31jIMM/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 44,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "SYtni31jIMM"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/WLClp9r3cUVb6WPQrTZI70fjL44\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5GQzBEQUNEQkU3QjYxQTc2",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Minecraft: Into the Nether (VOST)",
#     "description": "Minecraft. The game that took the world by storm. Follow the story of how the Minecraft phenomenon has ploughed through the 21st century selling over 54 million copies worldwide on a multitude of platforms engaging an audience in the millions which is still continuing to grow. The game boasts the biggest digital world in gaming history with a fan base stretching to every corner of the globe. Youtube viewing numbers have grown and online participation has tripled over the last few years creating a new industry for enthusiastic gamers. Vast communities have been brought together through it's educational impact, YouTube celebrities, festivals and game events pushing the boundaries of technology and creativity to the limits.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/nu4Ew0xA8aw/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/nu4Ew0xA8aw/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/nu4Ew0xA8aw/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 45,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "nu4Ew0xA8aw"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/R2dUqF1ibFDDGS5cRsKoBVeLJCs\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC45QzlDQjZEN0RGOUIwNjlF",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Return to Me",
#     "description": "Bob Rueland (David Duchovny) loses his wife (Joely Richardson) in a car accident. A year later, still grieving, he meets Grace Briggs (Minnie Driver), a shy waitress an Irish/Italian restaurant run by her grandfather Marty (Carroll O'Connor). Bob immediately falls for Grace and she's attracted to him as well, but what he doesn't know is that a year ago Grace was the recipient of a heart transplant -- and that Elizabeth was the donor.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/nbY5a71f4-U/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/nbY5a71f4-U/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/nbY5a71f4-U/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 46,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "nbY5a71f4-U"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/Gy6OrUZgANYpBmgiK8u1LtY-SZM\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5FNTU5OERFRTVFNzU3ODhE",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Throw Momma From The Train",
#     "description": "In this black-comedy spin-off of Alfred Hitchcock's STRANGERS ON A TRAIN, a writing student tries to persuade his instructor to \"trade murders\"...he will murder the instructor's ex-wife if the instructor will return the favor and kill his demented, domineering mother.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/9Ej5gc8xLoQ/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/9Ej5gc8xLoQ/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/9Ej5gc8xLoQ/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 47,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "9Ej5gc8xLoQ"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/nv9aYSpc_gc5zLZXAwSaJx3ld90\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5DMjlGODExMTRGOTRDQ0JB",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Tai Chi Zero",
#     "description": "In legendary Chen Village, everyone is a martial arts master, using their powerful Chen Style Tai Chi in all aspects of their lives. Lu Chan has arrived to train, but the villagers are forbidden to teach Chen Style to outsiders, and do their best to discourage him by challenging him to a series of fights. Everyone, from strong men to young children, defeats him using their Tai Chi moves. But when a man from the village's past returns with a frightening steam-powered machine and plans to build a railroad through the village at any costs, the villagers realize they may have no choice but to put their faith in Lu Chan... who has a secret power of his own.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/obcO6i7TKMc/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/obcO6i7TKMc/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/obcO6i7TKMc/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 48,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "obcO6i7TKMc"
#     }
#     }
#     },
#     {
#     "kind": "youtube#playlistItem",
#     "etag": "\"SJZWTG6xR0eGuCOh2bX6w3s4F94/lsnKEDBtmbccQvqKagUHnjvZ-jo\"",
#     "id": "UExIUFR4VHh0QzBpYlZaclQyX1dLV1VsMlNBeHNLdUt3eC5ENTFGNjQ4OENCRDRCMDY0",
#     "snippet": {
#     "publishedAt": "2020-03-05T14:40:24.000Z",
#     "channelId": "UClgRkhTL3_hImCAmdLfDE4g",
#     "title": "Khumba",
#     "description": "Rejected by his superstitious herd, a half-striped zebra embarks on a daring quest to earn his stripes, and finds the courage and self-acceptance to save all the animals of the Great Karoo. Featuring the voices of Liam Neeson, AnnaSophia Robb, Steve Buscemi and Laurence Fishburne.",
#     "thumbnails": {
#     "default": {
#     "url": "https://i.ytimg.com/vi/dH-NfR2o7T0/default.jpg",
#     "width": 120,
#     "height": 90
#     },
#     "medium": {
#     "url": "https://i.ytimg.com/vi/dH-NfR2o7T0/mqdefault.jpg",
#     "width": 320,
#     "height": 180
#     },
#     "high": {
#     "url": "https://i.ytimg.com/vi/dH-NfR2o7T0/hqdefault.jpg",
#     "width": 480,
#     "height": 360
#     },
#     "standard": {
#     "url": "https://i.ytimg.com/vi/dH-NfR2o7T0/sddefault.jpg",
#     "width": 640,
#     "height": 480
#     },
#     "maxres": {
#     "url": "https://i.ytimg.com/vi/dH-NfR2o7T0/maxresdefault.jpg",
#     "width": 1280,
#     "height": 720
#     }
#     },
#     "channelTitle": "YouTube Movies",
#     "playlistId": "PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx",
#     "position": 49,
#     "resourceId": {
#     "kind": "youtube#video",
#     "videoId": "dH-NfR2o7T0"
#     }
#     }
#     }
#     ]
#     }


# movie_data = youtube_data[:items]
# u1 = User.create(name: 'Jon', username: 'jonny5', password: 'abc')

# movie_data.each do |movie|
#     # byebug
#     vidID = movie[:snippet][:resourceId][:videoId]
   
#     # created_at.strftime("%m-%d-%YT%I:%M %P").upcase
#     month = sprintf('%02d', rand(12))
#     date = sprintf('%02d', rand(28))
#     year = 2020
#     hr = sprintf('%02d',rand(24)).to_i
#     min = sprintf('%02d',rand(60))
#     sec = sprintf('%02d',rand(60))
#     now = Time.now
#     a_day_ago = now - 60 * 60 * 24
#     random_time = rand(a_day_ago..now).to_s[11, 8]
    
#     this_time = "#{month}-#{date}-#{year} #{random_time}"

#     mv = Genre.first.movies.create(
#         videoId: vidID,
#         title: movie[:snippet][:title],
#         description: movie[:snippet][:description],
#         img_url: "https://i.ytimg.com/vi_webp/#{vidID}/movieposter.webp"
#     )

#     # mv.genres.push(type)

#     random = rand(21...41)
#     random.times do
#         Like.create(movie_id: mv.id, user_id: u1.id, created_at: this_time)
#     end

#     random = rand(19...31)
#     random.times do
#         Favorite.create(movie_id: mv.id, user_id: u1.id, created_at: this_time)
#     end

#     # random = rand(1...9)
#     # random.times do
#     #     randQuote = Faker::Movie.quote
#     #     Review.create(movie_id: mv.id, user_id: u1.id, content: randQuote, created_at: this_time)
#     # end


# # byebug
#  end





youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx&key=#{GOOGLE_API_KEY}&maxResults=50&q=#{genre}")
movie_data = JSON.parse(youtube_data)['items']
u1 = User.create(name: 'Jon', username: 'jonny5', password: 'abc')

movie_data.each do |movie|
    # byebug
    vidID = movie['snippet']['resourceId']['videoId']
   
    # created_at.strftime("%m-%d-%YT%I:%M %P").upcase
    month = sprintf('%02d', rand(12))
    date = sprintf('%02d', rand(28))
    year = 2020
    hr = sprintf('%02d',rand(24)).to_i
    min = sprintf('%02d',rand(60))
    sec = sprintf('%02d',rand(60))
    now = Time.now
    a_day_ago = now - 60 * 60 * 24
    random_time = rand(a_day_ago..now).to_s[11, 8]
    
    this_time = "#{month}-#{date}-#{year} #{random_time}"

    mv = Genre.first.movies.create(
        videoId: vidID,
        title: movie['snippet']['title'],
        description: movie['snippet']['description'],
        img_url: "https://i.ytimg.com/vi_webp/#{vidID}/movieposter.webp"
    )

    # mv.genres.push(type)

    random = rand(21...41)
    random.times do
        Like.create(movie_id: mv.id, user_id: u1.id, created_at: this_time)
    end

    random = rand(19...31)
    random.times do
        Favorite.create(movie_id: mv.id, user_id: u1.id, created_at: this_time)
    end


    # random = rand(1...9)
    # random.times do
    #     randQuote = Faker::Movie.quote
    #     Review.create(movie_id: mv.id, user_id: u1.id, content: randQuote, created_at: this_time)
    # end


# byebug
 end

# #FETCH FOR Horror
# genre = 'horror'
# type = Genre.create(name: genre)          #CREATE GENRE
# # youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=50&key=#{GOOGLE_API_KEY}&type=video&q=youtube+movies+free+with+ads+#{genre}")
# youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx&key=#{GOOGLE_API_KEY}&maxResults=50&q=#{genre}")
# movie_data = JSON.parse(youtube_data)['items']

# movie_data.each do |movie|

#     vidID = movie['snippet']['resourceId']['videoId']
   
#     Genre.second.movies.create(
#         videoId: vidID,
#         title: movie['snippet']['title'],
#         description: movie['snippet']['description'],
#         img_url: "https://i.ytimg.com/vi_webp/#{vidID}/movieposter.webp"
#     )
# # byebug
#     # Fetched.create(
#     #     movie_id: fetchedMovie.id,
#     #     genre_id: type.id
#     # )
    
#  end


# #FETCH FOR COMEDY
# genre = 'comedy'
# type = Genre.create(name: genre)          #CREATE GENRE
# # youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=50&key=#{GOOGLE_API_KEY}&type=video&q=youtube+movies+free+with+ads+#{genre}")
# youtube_data = RestClient.get("https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLHPTxTxtC0ibVZrT2_WKWUl2SAxsKuKwx&key=#{GOOGLE_API_KEY}&maxResults=50&q=#{genre}")
# movie_data = JSON.parse(youtube_data)['items']

# movie_data.each do |movie|

#     vidID = movie['snippet']['resourceId']['videoId']
   
#     Genre.third.movies.create(
#         videoId: vidID,
#         title: movie['snippet']['title'],
#         description: movie['snippet']['description'],
#         img_url: "https://i.ytimg.com/vi_webp/#{vidID}/movieposter.webp"
#     )

#     # Fetched.create(
#     #     movie_id: fetchedMovie.id,
#     #     genre_id: type.id
#     # )
    
#  end


# g1 = Genre.create(name: type)
# m1 = Movie.create(title: 'MI3', description: '5th Installment of Mission Impossible')
# u1 = User.create(name: 'Jon', username: 'jonny5', password: 'abc')
# l1 = Like.create(user_id: u1.id, movie_id: m1.id)
# r1 = Review.create(user_id: u1.id, movie_id: m1.id)
# f1 = Favorite.create(user_id: u1.id, movie_id: m1.id)
# f1 = Fetched.create(genre_id: g1.id, movie_id: m1.id)
# rt1 = Rating.create(user_id: u1.id, movie_id: m1.id, stars:5)


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