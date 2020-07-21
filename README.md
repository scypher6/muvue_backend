![Muvue](https://media-exp1.licdn.com/dms/image/C4E05AQGVKJwMPZ0mlg/feedshare-thumbnail_720_1280/0?e=1595451600&v=beta&t=8aIzxzGn7BxLFZrXcg0s1835GK03w7WlnDyiiYQma3Y)

# Muvue
Muvue is an app that uses YouTube API to allow you to stream free full-length movies online, directly from your browser.

### Features
The backend is running a rails server that saves the YouTube API data to a PostgreSQL database.

### Getting Started
- Git clone the repository
- Install Homebrew package manager:
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
- Update Brew
  brew doctor
  brew update
- Install PostgreSQL: 
  brew install libpq
- Make sure the PostsreSQL server is running
- Then run the following:
  rake db:create
- Run rails server: 
  rails s

### Tech Stack
- Rails server
- PostgreSQL db
- Actionmailer 
- YouTube API
- RestClient
- Figaro
