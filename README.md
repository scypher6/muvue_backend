# Muvue

Muvue is an app that uses YouTube API to allow you to stream free full-length movies online, directly from your browser.

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

