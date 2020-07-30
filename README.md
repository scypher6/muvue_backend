![Muvue](https://i.imgur.com/0n6RVEJ.png)

# Muvue
Muvue is an app that uses YouTube API to allow you to stream free full-length movies online, directly from your browser.

## Features
The backend is running a rails server that saves the YouTube API data to a PostgreSQL database.

## Getting Started
- Git clone the repository
- Install Homebrew package manager:
  */bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"*
- Update Brew
  *brew doctor*
  *brew update*
- Install PostgreSQL: 
  *brew install libpq*
- Make sure the PostsreSQL server is running
- Then create the db:
  *rake db:create*
- Run: *bundle install*
- Run rails server: 
  *rails s*
  
 ## Frontend: [Here](https://github.com/scypher6/muvue_frontend)

## Tech Stack
- Rails server - Rails Serializers - Active Records
- PostgreSQL db
- Actionmailer 
- YouTube API
- RestClient
- Figaro
